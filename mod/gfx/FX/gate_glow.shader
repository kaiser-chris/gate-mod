# The gate mod's self-lit glow (models repo: tools/shaders/gate_glow.shader, pdxgen/glows.py).
#
# Unlit, added onto what lies behind it, no shadow, no depth write: a vein of light along a root, a glowing crystal.
# The texture (DiffuseMap) gives the colour and, in alpha, the profile across a strip (V). U is the distance a
# pulse has travelled from its source (mesh units): bright bands run outward along U; a source (U < 0, the
# crystal the veins leave) swells and fades all over as each band sets off. As bright by day as by night.
#
# Built after gfx/FX/pdxmesh_vfx.shader (its includes, vertex output and opacity), with a map object variant as
# gfx/FX/pdxwater.shader has for the water in entities.

Includes = {
	"cw/camera.fxh"
	"cw/pdxmesh.fxh"
	"jomini/jomini_mapobject.fxh"
	"coloroverlay.fxh"
	"sharedconstants.fxh"
	"ssao_struct.fxh"
}

PixelShader =
{
	TextureSampler DiffuseMap
	{
		Ref = PdxTexture0
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Clamp"
		srgb = yes
	}
}

VertexStruct VS_OUTPUT_GATE_GLOW
{
	float4 Position			: PDX_POSITION;
	float2 UV0				: TEXCOORD0;
	float3 WorldSpacePos	: TEXCOORD1;
	uint InstanceIndex 		: TEXCOORD2;
};

VertexShader =
{
	Code
	[[
		VS_OUTPUT_GATE_GLOW GateGlowOutput( VS_OUTPUT_PDXMESH In )
		{
			VS_OUTPUT_GATE_GLOW Out;
			Out.Position = In.Position;
			Out.UV0 = In.UV0;
			Out.WorldSpacePos = In.WorldSpacePos;
			Out.InstanceIndex = 0;
			return Out;
		}
	]]

	MainCode VS_gate_glow
	{
		Input = "VS_INPUT_PDXMESHSTANDARD"
		Output = "VS_OUTPUT_GATE_GLOW"
		Code
		[[
			PDX_MAIN
			{
				VS_OUTPUT_GATE_GLOW Out = GateGlowOutput( PdxMeshVertexShaderStandard( Input ) );
				Out.InstanceIndex = Input.InstanceIndices.y;
				return Out;
			}
		]]
	}

	MainCode VS_gate_glow_mapobject
	{
		Input = "VS_INPUT_PDXMESH_MAPOBJECT"
		Output = "VS_OUTPUT_GATE_GLOW"
		Code
		[[
			PDX_MAIN
			{
				float4x4 WorldMatrix = UnpackAndGetMapObjectWorldMatrix( Input.Index24_Packed1_Opacity6_Sign1 );
				VS_OUTPUT_GATE_GLOW Out = GateGlowOutput( PdxMeshVertexShader( PdxMeshConvertInput( Input ), 0, WorldMatrix ) );
				Out.InstanceIndex = Input.Index24_Packed1_Opacity6_Sign1;
				return Out;
			}
		]]
	}
}

PixelShader =
{
	Code
	[[
		// seen from far out on the map: bright, and as bright by day as by night (muted at 0.22 + 1.1 and 0.35 by day)
		#define GATE_GLOW_WAVELENGTH 0.32f	// mesh units between two pulses
		#define GATE_GLOW_SPEED 0.28f		// pulses a second leaving the source
		#define GATE_GLOW_SHARPNESS 4.0f	// how narrow a pulse is
		#define GATE_GLOW_BASE 0.6f			// the light between pulses
		#define GATE_GLOW_PULSE 3.0f		// the light a pulse adds
		#define GATE_GLOW_DAY 1.0f			// by day, this much of the night's light
		// the source (U < 0, a crystal): all of it swells and fades as each pulse sets off, slower and stronger
		#define GATE_GLOW_SOURCE_SHARPNESS 2.0f
		#define GATE_GLOW_SOURCE_BASE 0.15f
		#define GATE_GLOW_SOURCE_PULSE 1.6f		// 3.5 outshone the veins: the crystal's glow is the bigger surface
	]]

	MainCode PS_gate_glow
	{
		Input = "VS_OUTPUT_GATE_GLOW"
		Output = "PS_COLOR_SSAO"
		Code
		[[
			PDX_MAIN
			{
				float4 Texel = PdxTex2D( DiffuseMap, Input.UV0 );

				float Distance = max( Input.UV0.x, 0.0f );
				float Phase = frac( Distance / GATE_GLOW_WAVELENGTH - GlobalTime * GATE_GLOW_SPEED );
				float Wave = 0.5f + 0.5f * cos( 6.2831853f * Phase );
				float Strength = GATE_GLOW_BASE + GATE_GLOW_PULSE * pow( Wave, GATE_GLOW_SHARPNESS );
				if ( Input.UV0.x < 0.0f )  // the source: a broad swell, in time with the pulses leaving it
				{
					Strength = GATE_GLOW_SOURCE_BASE + GATE_GLOW_SOURCE_PULSE * pow( Wave, GATE_GLOW_SOURCE_SHARPNESS );
				}

				float NightRange = max( _LightsActivateEnd - _LightsActivateBegin, 0.0001f );
				float Night = saturate( ( _DayNightValue - _LightsActivateBegin ) / NightRange );
				Strength *= lerp( GATE_GLOW_DAY, 1.0f, Night );

				#ifdef GATE_GLOW_MAPOBJECT
					float Opacity = UnpackAndGetMapObjectOpacity( Input.InstanceIndex );
				#else
					float Opacity = PdxMeshGetOpacity( Input.InstanceIndex );
				#endif

				PS_COLOR_SSAO Out;
				Out.Color = float4( Texel.rgb * Texel.a * Strength * Opacity, 0.0f );
				Out.SSAOColor = float4( 0.0f, 0.0f, 0.0f, 0.0f );
				return Out;
			}
		]]
	}
}

BlendState GateGlowAdditive
{
	BlendEnable = yes
	SourceBlend = "ONE"
	DestBlend = "ONE"
	WriteMask = "RED|GREEN|BLUE"
}

DepthStencilState GateGlowDepth
{
	DepthEnable = yes
	DepthWriteEnable = no
}

RasterizerState GateGlowTwoSided
{
	CullMode = "none"
}

Effect gate_glow
{
	VertexShader = "VS_gate_glow"
	PixelShader = "PS_gate_glow"
	BlendState = "GateGlowAdditive"
	DepthStencilState = "GateGlowDepth"
	RasterizerState = "GateGlowTwoSided"
}

Effect gate_glow_mapobject
{
	VertexShader = "VS_gate_glow_mapobject"
	PixelShader = "PS_gate_glow"
	BlendState = "GateGlowAdditive"
	DepthStencilState = "GateGlowDepth"
	RasterizerState = "GateGlowTwoSided"
	Defines = { "GATE_GLOW_MAPOBJECT" }
}
