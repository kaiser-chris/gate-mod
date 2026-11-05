# Dungeon Locations

This document lists every planned dungeon on Earth, grouped by strategic region. It builds on the general rules laid out in [Dungeons](Dungeons.md): each dungeon settles into a single coherent theme (its inner tileset), its depth is measured in layers, and its entrance can look like almost anything the location suggests.

Every land strategic region has at least two dungeons.

## Conventions

- **Time independence.** Dungeons spawn during play based on external criteria, so no description refers to a date, to the opening of the Gates, or to the situation in which the dungeon appears. Descriptions may draw on legends and history of the *place*, but never claim the dungeon itself has a long history.
- **No owners.** Descriptions name geography, peoples, and old places rather than countries, since the owner of a state changes during play.
- **Key.** Localization keys follow `gate_dungeon_<name>` and `gate_dungeon_<name>_desc`.
- **State.** The `STATE_*` key is the state region the dungeon is placed in.
- **Inner tileset.** The theme of every inner layer. A dungeon never mixes tilesets.
- **Suggested depth.** Number of inner layers, including the boss layer but excluding the entrance (Tiefburg has 4). These are lore suggestions and not binding for balancing.
- **Fallback entrance art.** The closest existing entrance image to use until a dedicated top layer image exists.
- **Top layer.** What the place above the dungeon looks like, followed by keywords to generate the entrance image in Midjourney.

## Tilesets

### Existing tilesets

| Tileset | Registry prefix | Used for |
|---|---|---|
| Classic | `dungeon_layer_gate_inner_classic_*` | Castle halls, cells, carved stone corridors, palaces |
| Tropical | `dungeon_layer_gate_inner_tropical_*` | Jungle, overgrown ruins, swamp forest |
| Cavern | `dungeon_layer_gate_inner_cavern_*` | Natural caves, mines, karst systems |
| Ice Cavern | `dungeon_layer_gate_inner_ice_cavern_*` | Glaciers, ice caves, permafrost |

### Proposed tilesets

The existing four tilesets leave three large gaps: the world's deserts, its volcanic belts, and its lakes, coasts, and wetlands. The following three tilesets fill those gaps and are used throughout this document.

#### Desert Tomb

Proposed prefix: `dungeon_layer_gate_inner_desert_tomb_*`

Buried sandstone halls, pillared burial chambers, sarcophagi, carved reliefs, and treasure vaults half-filled with drifting sand. Lit by warm torchlight and thin shafts of sunlight from cracks far above. Traps, false passages, and sealed doors are common. Denizens include wrapped guardians, giant scorpions, scarab swarms, animated statues, and sand wraiths.

Layer variants and Midjourney keywords:

1. Entrance corridor: `sandstone tomb corridor, carved reliefs on walls, sand drifting down steps, torchlight, dust motes`
2. Pillared hall: `vast pillared hall, massive painted columns, sand-covered floor, shafts of sunlight from ceiling cracks`
3. Burial chamber: `burial chamber, stone sarcophagi, painted star ceiling, golden grave goods, flickering torches`
4. Trap gallery: `narrow tomb gallery, pressure plates, spike pits, collapsed ceiling, sand pouring through gaps`
5. Treasure vault: `treasure vault, heaps of gemstones and ore, sealed stone doors, guardian statues, warm golden light`
6. Boss chamber: `colossal throne tomb, giant seated statue, sand whirling in the air, ominous glow, ancient desert necropolis`

#### Volcanic

Proposed prefix: `dungeon_layer_gate_inner_volcanic_*`

Black basalt galleries, lava tubes, rivers and falls of molten rock, obsidian formations, sulphur vents, and magma chambers. The air shimmers with heat, the ground trembles, and the deeper layers often take on the look of a vast forge. Denizens include fire elementals, magma salamanders, slag golems, ash wraiths, and creatures that seem to be shaped from the mountain itself.

Layer variants and Midjourney keywords:

1. Lava tube: `volcanic lava tube tunnel, black basalt walls, glowing cracks in floor, heat haze`
2. Lava river: `underground cavern with river of molten lava, basalt bridges, orange glow, rising smoke`
3. Obsidian gallery: `cavern of jagged black obsidian crystals, reflections of lava light, glassy floor`
4. Sulphur vents: `yellow sulphur crusted cave, steaming vents, toxic fumes, bubbling pools`
5. Forge hall: `vast volcanic forge hall, obsidian anvils in rows, lava channels, smouldering embers`
6. Boss chamber: `enormous magma chamber, lake of lava, collapsing rock pillars, eruption glow, apocalyptic`

#### Drowned City

Proposed prefix: `dungeon_layer_gate_inner_drowned_city_*`

The remains of a sunken city: flooded streets, waist-deep plazas, submerged halls, barnacle- and weed-covered columns, collapsed towers, and stairs leading down into dark water. The light is cold, green, and rippling, with bioluminescent algae in the deeper layers. Denizens include the drowned dead, giant crustaceans, eels, fish-folk, and tentacled things that hunt beneath the surface.

Layer variants and Midjourney keywords:

1. Flooded street: `flooded ancient city street, waist-deep water, ruined houses, hanging weeds, rippling light`
2. Sunken plaza: `sunken plaza, toppled statues, barnacle-covered columns rising from dark water`
3. Submerged hall: `half-submerged grand hall, arches reflected in still water, dripping ceiling, green gloom`
4. Collapsed tower: `collapsed tower interior, spiral stairs descending into water, seaweed, broken windows`
5. Bioluminescent depths: `deep flooded vaults, glowing blue bioluminescent algae, dark water, ghostly light`
6. Boss chamber: `drowned temple sanctum, great altar in a pool, shafts of light through water, ominous shapes beneath the surface`

### Tileset distribution

| Tileset | Dungeons |
|---|---|
| Classic | 11 (including Tiefburg) |
| Tropical | 11 |
| Cavern | 14 |
| Ice Cavern | 10 |
| Desert Tomb | 8 |
| Volcanic | 10 |
| Drowned City | 9 |

## Overview

| Region | State | Dungeon | Tileset | Depth |
|---|---|---|---|---|
| Western Europe | `STATE_HIGHLANDS` | Dunmorrach | Classic | 6 |
| Western Europe | `STATE_FRIESLAND` | Oldewaard | Drowned City | 4 |
| Southern Europe | `STATE_SICILY` | Mongibello | Volcanic | 8 |
| Southern Europe | `STATE_ARAGON` | Grieta Blanca | Ice Cavern | 5 |
| Balkans | `STATE_SOUTHERN_TRANSYLVANIA` | Cetatea Neagra | Classic | 7 |
| Balkans | `STATE_CRETE` | Labyrinthos | Cavern | 6 |
| Central Europe | `STATE_TYROL` | Tiefburg (existing) | Classic | 4 |
| Central Europe | `STATE_SAXONY` | Silbergrund | Cavern | 6 |
| Central Europe | `STATE_EAST_SWITZERLAND` | Firnschlund | Ice Cavern | 7 |
| Northern Europe | `STATE_ICELAND` | Surtsdjúp | Volcanic | 9 |
| Northern Europe | `STATE_NORTHERN_NORWAY` | Svartisgapet | Ice Cavern | 6 |
| Russia | `STATE_PERM` | Ledyanoy Zev | Ice Cavern | 4 |
| Russia | `STATE_NIZHNY_NOVGOROD` | Kitezh | Drowned City | 8 |
| Eastern Europe | `STATE_CRIMEA` | Qara Qoba | Cavern | 4 |
| Eastern Europe | `STATE_LESSER_POLAND` | Glebia Solna | Classic | 6 |
| Nile Basin | `STATE_UPPER_EGYPT` | Ta-Djeser | Desert Tomb | 8 |
| Nile Basin | `STATE_DARFUR` | Deriba | Volcanic | 6 |
| North Africa | `STATE_SAHARA` | Qabr ar-Raml | Desert Tomb | 7 |
| North Africa | `STATE_INNER_MOROCCO` | Tazrout | Classic | 4 |
| West Africa | `STATE_EASTERN_MALI` | Tellemkoro | Cavern | 4 |
| West Africa | `STATE_YORUBA_STATES` | Igbo Ojiji | Tropical | 4 |
| Equatorial Africa | `STATE_CONGO_ORIENTALE` | Mokele | Tropical | 7 |
| Equatorial Africa | `STATE_KATANGA` | Shimo la Shaba | Cavern | 6 |
| Southern Africa | `STATE_TRANSVAAL` | Diepkloof | Cavern | 4 |
| Southern Africa | `STATE_HEREROLAND` | Bone Shoal | Drowned City | 6 |
| East Africa | `STATE_RIFT_VALLEY` | Suswa | Volcanic | 7 |
| East Africa | `STATE_AMHARA` | Debre Sela | Classic | 6 |
| Indochina | `STATE_CAMBODIA` | Prasat Khmoch | Tropical | 7 |
| Indochina | `STATE_ANNAM` | Hang May | Cavern | 9 |
| Indonesia | `STATE_EAST_JAVA` | Kawah Biru | Volcanic | 6 |
| Indonesia | `STATE_WEST_BORNEO` | Rimba Sunyi | Tropical | 6 |
| South China | `STATE_GUANGXI` | Jiulong Dong | Cavern | 7 |
| South China | `STATE_YUNNAN` | Wuliang Lin | Tropical | 6 |
| North China | `STATE_ALXA` | Khara-Khoto | Desert Tomb | 7 |
| North China | `STATE_XIAN` | Dixia Gong | Classic | 8 |
| Northeast Asia | `STATE_KAMCHATKA` | Ognennaya Past | Volcanic | 9 |
| Northeast Asia | `STATE_TOKAI` | Hyoketsu | Ice Cavern | 4 |
| Siberia | `STATE_YAKUTSK` | Buus Khaya | Ice Cavern | 7 |
| Siberia | `STATE_IRKUTSK` | Shamanka | Drowned City | 8 |
| Oceania | `STATE_NEW_SOUTH_WALES` | Grose Hollow | Cavern | 6 |
| Oceania | `STATE_NORTH_ISLAND` | Ketetahi | Volcanic | 7 |
| Canada | `STATE_NUNAVUT` | Nunataq | Ice Cavern | 8 |
| Canada | `STATE_ALBERTA` | Red Deer Hollow | Cavern | 4 |
| Pacific Coast | `STATE_WASHINGTON` | Tahoma Vent | Volcanic | 8 |
| Pacific Coast | `STATE_ARIZONA` | Kaibab Vault | Desert Tomb | 7 |
| Great Plains | `STATE_SOUTH_DAKOTA` | Paha Sapa | Cavern | 6 |
| Great Plains | `STATE_LOUISIANA` | Ville Engloutie | Drowned City | 6 |
| Atlantic Coast | `STATE_KENTUCKY` | Echo Deep | Cavern | 9 |
| Atlantic Coast | `STATE_FLORIDA` | Pahayokee | Tropical | 3 |
| Central America | `STATE_YUCATAN` | Ch'en Ha | Drowned City | 7 |
| Central America | `STATE_GUATEMALA` | Uxwitz | Tropical | 8 |
| Brazil | `STATE_AMAZONAS` | Igapó Escuro | Tropical | 8 |
| Brazil | `STATE_BAHIA` | Gruta Diamantina | Cavern | 6 |
| Andes | `STATE_LA_PAZ` | Ch'amak Uta | Drowned City | 7 |
| Andes | `STATE_AREQUIPA` | Nina Uchku | Volcanic | 8 |
| La Plata | `STATE_PATAGONIA` | Glaciar del Silencio | Ice Cavern | 9 |
| La Plata | `STATE_BAJO_PARAGUAY` | Tavarangue | Classic | 3 |
| Gran Colombia | `STATE_GUAYANA` | Mawari Sima | Tropical | 7 |
| Gran Colombia | `STATE_CUNDINAMARCA` | Guatavita | Drowned City | 6 |
| Near East | `STATE_KONYA` | Malakopi | Classic | 7 |
| Near East | `STATE_TRANSJORDAN` | Khaznat al-Layl | Desert Tomb | 7 |
| Arabia | `STATE_OMAN` | Ubar | Desert Tomb | 8 |
| Arabia | `STATE_YEMEN` | Bir Barhut | Cavern | 6 |
| Greater Persia | `STATE_FARS` | Takht-e Tariki | Desert Tomb | 7 |
| Greater Persia | `STATE_MAZANDARAN` | Zendan-e Damavand | Volcanic | 9 |
| Central Asia | `STATE_KIRGHIZIA` | Muz-Tör | Ice Cavern | 7 |
| Central Asia | `STATE_MERZ` | Kara Kala | Desert Tomb | 6 |
| South India | `STATE_CEYLON` | Simhagiri | Classic | 6 |
| South India | `STATE_TRAVANCORE` | Irul Kaavu | Tropical | 4 |
| Himalayas | `STATE_NGARI` | Nagpo Dzong | Classic | 7 |
| Himalayas | `STATE_HIMALAYAS` | Gangri Phug | Ice Cavern | 10 |
| North India | `STATE_RAJPUTANA` | Andheri Baori | Drowned City | 6 |
| North India | `STATE_ASSAM` | Krem Ksuid | Tropical | 6 |

---

## Europe

### Western Europe (`region_western_europe`)

#### Dunmorrach
- **Key:** `gate_dungeon_dunmorrach`
- **State:** `STATE_HIGHLANDS`
- **Inner tileset:** Classic
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_01`

> On a headland above a grey sea loch stands the stump of a broch that no clan remembers raising, its dry-stone walls barely taller than a man. Step through its single low doorway, however, and the walls do not end: Dunmorrach opens onto vaulted halls, guardrooms, and spiral stairs that descend through floor after floor of a keep far too large to fit beneath the hill. Delvers speak of armoured sentinels that never tire, of banners in colours that belong to no clan, and of a great hall at the bottom where a cold hearth is always laid but never lit.

**Top layer:** The squat, roofless stump of an Iron Age broch on a heather-covered headland above a sea loch. Low mist rolls in from the water under an overcast sky, and the single low doorway is a black gap in the dry-stone wall.

**Midjourney:** `scottish highlands, ruined iron age broch, dry stone round tower stump, heather moorland headland, sea loch, low mist, overcast sky, dark low doorway`

#### Oldewaard
- **Key:** `gate_dungeon_oldewaard`
- **State:** `STATE_FRIESLAND`
- **Inner tileset:** Drowned City
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Out on the Wadden mudflats, a long walk from the dikes at low tide, the tip of a brick church tower rises from the silt where no village has stood within living memory. When the tide is out its belfry door stands just above the mud, and those who climb through it find not a bell chamber but a stair winding down into a drowned town of gabled houses, flooded lanes, and canals choked with weed. The tide never reaches the halls within, yet every street is under water, and things move beneath it. Parties who mistime the walk back across the flats risk the sea long before they reach the dungeon's own dangers.

**Top layer:** The upper part of a brick church tower standing alone in wet, shining mudflats at low tide, with tidal channels snaking around it. A dike line is barely visible on the horizon; gulls circle in grey North Sea light.

**Midjourney:** `wadden sea mudflats, low tide, half-buried brick church tower, belfry door just above mud, winding tidal channels, distant dike, frisian coast, grey sky, seagulls, reflective wet silt`

### Southern Europe (`region_southern_europe`)

#### Mongibello
- **Key:** `gate_dungeon_mongibello`
- **State:** `STATE_SICILY`
- **Inner tileset:** Volcanic
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> High on the black flanks of Etna, among old lava flows, a lava tube that ought to run a few dozen paces into the mountain runs far deeper. Mongibello, named for the mountain's old Sicilian name, is a dungeon of basalt galleries and glowing magma channels where the air shimmers with heat and the stone underfoot is never quite still. Its denizens are creatures of cinder and slag, and the lower layers are said to resemble a forge more than a cave, with anvils of obsidian standing in rows as though awaiting smiths who never arrive.

**Top layer:** A black, rough lava field high on the slopes of Etna, dotted with yellow broom bushes. The dark mouth of a lava tube opens in a low ridge of old flow rock, and the smoking summit looms in the background.

**Midjourney:** `mount etna, black lava field, lava tube entrance in rock ridge, smoking volcano summit, sicilian highlands, yellow broom shrubs, volcanic ash, warm evening glow`

#### Grieta Blanca
- **Key:** `gate_dungeon_grieta_blanca`
- **State:** `STATE_ARAGON`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 5
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Near the high passes of the Aragonese Pyrenees, beneath the shoulder of Monte Perdido, a narrow crevice in the limestone breathes cold air even in the height of summer. Herders have always known it as a place where snow lingers long after the passes clear, but beyond its first bend the Grieta Blanca, the White Crevice, opens into a frozen labyrinth far larger than the mountain should hold: frozen waterfalls, blue ice chambers, and galleries floored with ice so clear that delvers can see shapes trapped in it below their boots.

**Top layer:** A narrow limestone crevice on a high Pyrenean karst slope, with patches of old snow around its mouth and cold mist curling out of it. Grey peaks and a clear sky above, a high meadow below.

**Midjourney:** `pyrenees mountains, monte perdido, narrow limestone crevice, cold mist breathing out, lingering snow patches, karst plateau, high alpine meadow, clear sky`

### Balkans (`region_balkans`)

#### Cetatea Neagra
- **Key:** `gate_dungeon_cetatea_neagra`
- **State:** `STATE_SOUTHERN_TRANSYLVANIA`
- **Inner tileset:** Classic
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_02`

> On a wooded spur of the southern Carpathians stand the blackened walls of a fortress that appears in no chronicle, its gate tower intact and its courtyard choked with beech saplings. The villages in the valley below call it Cetatea Neagra, the Black Citadel, and keep their flocks well away from it. Through the gate tower lies a dungeon of the classic kind: torchlit corridors, barracks, prisons, and chapels stacked layer upon layer, patrolled by garrisons of armoured dead and lesser horrors that follow orders no one alive has given.

**Top layer:** A blackened stone fortress ruin on a forested mountain spur, its gate tower still standing. Fog fills the valley below and the beech forest is in autumn colours.

**Midjourney:** `carpathian mountains, blackened stone fortress ruin, intact gate tower, beech forest, valley fog, autumn foliage, dramatic clouds, eastern european castle`

#### Labyrinthos
- **Key:** `gate_dungeon_labyrinthos`
- **State:** `STATE_CRETE`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the hills south of the Messara plain lie old quarry galleries that Cretans have long called the Labyrinth, a maze of rock-cut passages once thought to be the very one of legend. One of those passages continues where the old maps say it ends. Beyond it the Labyrinthos twists through natural caverns of pale limestone, dripping galleries, and branching tunnels that rearrange themselves between visits more readily than in any other known dungeon. Delvers report horned beasts in the deeper layers and insist, half in jest, that the place knows exactly which story it is imitating.

**Top layer:** A square rock-cut quarry entrance in a dry, rocky Cretan hillside, surrounded by olive trees and thyme scrub under bright sun.

**Midjourney:** `crete, rocky limestone hillside, ancient quarry entrance, rock-cut passage, olive trees, thyme scrub, bright mediterranean sun, dry hills`

### Central Europe (`region_central_europe`)

#### Tiefburg (existing)
- **Key:** `gate_dungeon_tiefburg` (already implemented)
- **State:** `STATE_TYROL`
- **Inner tileset:** Classic
- **Depth:** 4
- **Entrance art:** `dungeon_layer_gate_top_cave_01`

The limestone caves above an alpine pasture whose entrance opens onto castle halls, barred cells, and corridors without any castle above ground. See its existing localization for the full description.

**Top layer:** A cave mouth in a pale limestone cliff above a steep Tyrolean pasture, with grazing goats, a few larches, and a wooden herders' hut below.

**Midjourney:** `tyrolean alps, pale limestone cliff, cave mouth, steep alpine pasture, grazing goats, larch trees, wooden herders hut, bright mountain light`

#### Silbergrund
- **Key:** `gate_dungeon_silbergrund`
- **State:** `STATE_SAXONY`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the Ore Mountains, where silver has been dug for longer than anyone has kept records, an abandoned adit above a mining village leads back into the hillside along a gallery cut by miners' hands. Past the last tool marks the gallery becomes Silbergrund: a sprawl of natural caverns veined with glittering ore, underground lakes, and shafts that drop into darkness further than any lamp can reach. Old miners say the mountain is paying back what was taken from it, and the dungeon's chests are indeed rich in ore, but the things that guard them dig as well as any miner and know the tunnels better.

**Top layer:** A timber-framed mine adit in a forested slope of spruce, with an overgrown slag heap beside it and the roofs of a mining village below. Light snow on the ground.

**Midjourney:** `ore mountains, erzgebirge, abandoned mine adit, timber-framed tunnel mouth, spruce forest, overgrown slag heap, mining village below, light snow`

#### Firnschlund
- **Key:** `gate_dungeon_firnschlund`
- **State:** `STATE_EAST_SWITZERLAND`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Where a glacier tongue ends in the high valleys of the Grisons, meltwater pours from a blue ice cave like those found beneath many alpine glaciers. Firnschlund looks no different from its neighbours from the outside, but its meltwater never stops, even in the depths of winter, and its entrance never moves as the ice advances and retreats around it. Inside, the ice deepens into vaulted halls of blue and white, crevasses bridged by frozen arches, and chambers so cold that breath freezes before it leaves the lips. Mountain guides who lead parties to its mouth refuse to go one step beyond it.

**Top layer:** The snout of an alpine glacier with a blue ice cave at its base, a meltwater stream running out over grey moraine. Snowy peaks behind under crisp light.

**Midjourney:** `swiss alps, glacier tongue, blue ice cave entrance, meltwater stream, rocky grey moraine, snowy peaks, high alpine valley, crisp light`

### Northern Europe (`region_northern_europe`)

#### Surtsdjúp
- **Key:** `gate_dungeon_surtsdjup`
- **State:** `STATE_ICELAND`
- **Inner tileset:** Volcanic
- **Suggested depth:** 9
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the lava fields of the western highlands, old sagas tell of a fire giant who came north from Muspelheim and of caves where outlaws hid in his shadow. Surtsdjúp, the Deep of Surtr, begins in one such lava cave, its roof fallen in places to open on the grey sky. Further in, the cave does what no ordinary lava tube can: it grows hotter rather than colder, until the walls glow and rivers of molten rock flow where water should. Delvers count it among the most dangerous dungeons of the north, and the fire-born creatures of its lower layers seem to grow larger the deeper a party goes.

**Top layer:** A moss-covered lava field with a collapsed lava tube skylight opening into darkness. Steam rises from vents nearby, a glacier sits on the horizon, and the sky is overcast.

**Midjourney:** `iceland highlands, moss-covered lava field, collapsed lava tube skylight, steam vents, distant glacier, overcast sky, black basalt, desolate landscape`

#### Svartisgapet
- **Key:** `gate_dungeon_svartisgapet`
- **State:** `STATE_NORTHERN_NORWAY`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Beneath the great icecap of Svartisen, whose old ice is so dense it looks almost black, a glacier tongue above a fjord has split open into a dark gap the locals call Svartisgapet. Fishermen rowing past say the gap breathes, drawing air in at dusk and letting it out at dawn. Within lies an ice cavern of black and blue, its walls holding stones, timbers, and the outlines of creatures frozen in mid-stride. Some of them are not as frozen as they appear.

**Top layer:** A dark, almost black glacier tongue descending toward a fjord, split by a deep gap. Steep mountains on either side, a small wooden rowing boat on the water, low midnight sun.

**Midjourney:** `northern norway, svartisen glacier, dark dense ice, deep crevice in glacier, fjord shoreline, steep mountains, small wooden rowing boat, midnight sun, cold blue tones`

### Russia (`region_russia`)

#### Ledyanoy Zev
- **Key:** `gate_dungeon_ledyanoy_zev`
- **State:** `STATE_PERM`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Along the Sylva river in the western Urals, the gypsum hills are honeycombed with caves where ice lingers year round. Ledyanoy Zev, the Icy Maw, opens in one of these hills behind a curtain of icicles that regrows within the hour whenever it is broken. Inside, frost crystals as large as a man's hand grow on every surface, grottos fill with frozen lakes, and the cold seems to follow intruders rather than simply surround them. Its denizens are pale things that hunt by the warmth of a party's bodies.

**Top layer:** A gypsum hill above a frozen river, covered in pine and birch, with a cave mouth hidden behind a thick curtain of icicles. Deep snow and pale winter light.

**Midjourney:** `ural mountains, sylva river, white gypsum cliffs, ice cave entrance, thick icicle curtain, pine and birch forest, deep snow, pale winter light`

#### Kitezh
- **Key:** `gate_dungeon_kitezh`
- **State:** `STATE_NIZHNY_NOVGOROD`
- **Inner tileset:** Drowned City
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Lake Svetloyar is small, round, and deep, and for as long as anyone in the region can remember it has been said that a holy city lies beneath it, hidden from its enemies by the water, its bells still ringing on quiet nights. Kitezh is the dungeon the pilgrims did not expect: a flight of white stone steps descending from the lakeshore straight into the water, down which a party can walk dry-shod into a drowned city of churches, walls, and wooden streets beneath the lake. The bells do ring. No one who has returned has seen clearly what rings them.

**Top layer:** A small round forest lake at dusk, its surface perfectly still. White stone steps lead from the birch-lined shore down into the dark water, and the faint reflection of golden onion domes shimmers on a surface where no church stands.

**Midjourney:** `russian forest lake, svetloyar, still dark water, white stone steps descending into water, birch trees, ghostly reflection of golden onion domes, dusk, mist over water`

### Eastern Europe (`region_eastern_europe`)

#### Qara Qoba
- **Key:** `gate_dungeon_qara_qoba`
- **State:** `STATE_CRIMEA`
- **Inner tileset:** Cavern
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> On the high karst plateaus of the Crimean mountains, the yayla pastures are pocked with sinkholes and shafts, most of them shallow and well known to the herders who graze their flocks there. Qara Qoba, the Black Cave, is a sinkhole that was always there but was never this deep. Below its lip a party descends into a world of marble-white chambers, curtain formations, and dripping galleries that branch endlessly. The deeper layers are said to be home to pale serpents and to echoes that answer back in voices other than one's own.

**Top layer:** A grassy, windswept karst plateau with a dark sinkhole shaft in the foreground and sheep grazing around it. The Black Sea glints far below on the horizon.

**Midjourney:** `crimean mountains, karst plateau, grassy yayla pasture, dark sinkhole cave shaft, grazing sheep, distant black sea, windswept, summer light`

#### Glebia Solna
- **Key:** `gate_dungeon_glebia_solna`
- **State:** `STATE_LESSER_POLAND`
- **Inner tileset:** Classic
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> South of Krakow, the salt mines run for miles underground, their chambers carved by generations of miners into chapels, halls, and staircases of grey-green rock salt. Glebia Solna, the Salt Deep, opens off a forgotten side gallery of one such mine. Its halls look carved rather than natural, with salt pillars, statues, and chandeliers of crystal, yet no miner's tools ever touched them. The deeper layers resemble a great salt palace more than a mine, garrisoned by figures of salt and stone that crumble when struck and reassemble when ignored.

**Top layer:** A side gallery in an old salt mine, its grey-green rock salt walls braced with heavy timber. Oil lamps light the passage, and at its end a doorway carved with too-perfect precision leads into darkness.

**Midjourney:** `polish salt mine, carved rock salt gallery, heavy wooden support beams, grey-green salt walls, oil lamps, salt crystal chandelier, dark carved doorway`

---

## Africa

### Nile Basin (`region_nile_basin`)

#### Ta-Djeser
- **Key:** `gate_dungeon_ta_djeser`
- **State:** `STATE_UPPER_EGYPT`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the desert hills on the west bank of the Nile, where the old kings of Egypt cut their tombs into the rock, there is a tomb entrance no surveyor has listed and no robber has emptied. Its doorway is carved with the familiar figures of gods and kings, but the cartouches that should hold their names are blank. Ta-Djeser, named for the old Egyptian term for the sacred necropolis, descends through corridors and pillared halls painted with stars, burial chambers stacked with sealed sarcophagi, and false passages that end in pits. Its guardians are wrapped and patient, and they do not stay in their coffins.

**Top layer:** A barren limestone valley with a rock-cut tomb doorway at the foot of a cliff, its lintel carved with figures. Sand drifts against the threshold under a harsh midday sun.

**Midjourney:** `valley of the kings, egyptian desert hills, rock-cut tomb entrance, carved hieroglyph doorway, limestone cliffs, sand drifts, harsh midday sun, deep shadows`

#### Deriba
- **Key:** `gate_dungeon_deriba`
- **State:** `STATE_DARFUR`
- **Inner tileset:** Volcanic
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Jebel Marra rises out of the dry plains of Darfur as a green island of cool slopes, streams, and terraced fields, and at its summit lies the Deriba caldera with its twin crater lakes. On the inner wall of the caldera, a fissure that should release nothing more than a breath of warm air opens into a dungeon of black rock and smouldering vents. Deriba is hotter than its surroundings by far, its layers crossed by rivers of molten stone and pools of boiling mud, and the creatures within are made as much of ash as of flesh.

**Top layer:** A wide volcanic caldera holding two crater lakes, with green slopes and terraced fields on the rim. Steam rises from a fissure in the inner wall, while dry plains stretch out far below.

**Midjourney:** `jebel marra, volcanic caldera, twin crater lakes, steaming rock fissure, green highland slopes, terraced fields, dry plains far below, bright sky`

### North Africa (`region_north_africa`)

#### Qabr ar-Raml
- **Key:** `gate_dungeon_qabr_ar_raml`
- **State:** `STATE_SAHARA`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Deep in the great sand seas of the Sahara, the dunes move with the wind and sometimes uncover what they have kept buried. Qabr ar-Raml, the Tomb of the Sand, is a sandstone gateway at the foot of a towering dune, flanked by weathered statues whose faces the wind has scoured away. Caravans that pass it water their camels elsewhere. Behind the gate a dungeon of buried halls descends through colonnades half-filled with sand, burial vaults, and shrines to forgotten powers, where scorpions the size of horses guard chests heavy with gemstones.

**Top layer:** A towering dune with a half-buried sandstone gateway at its foot, flanked by faceless, eroded statues. A camel caravan passes in the far distance at golden hour.

**Midjourney:** `sahara desert, towering sand dune, half-buried sandstone gateway, faceless eroded statues, distant camel caravan, golden hour, wind-blown sand, endless dunes`

#### Tazrout
- **Key:** `gate_dungeon_tazrout`
- **State:** `STATE_INNER_MOROCCO`
- **Inner tileset:** Classic
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_01`

> High in the Atlas mountains, above a valley of walnut trees and terraced barley, stands a red-walled kasbah that the villagers say was abandoned before their grandfathers' grandfathers were born. Its towers are crumbling and its courtyards empty, but a stair in its central tower leads down into Tazrout, a dungeon of stone halls, guardrooms, and prison cells, far larger and older-looking than the earthen fortress above. Its garrison of armoured warriors fights with the discipline of a standing army, and parties that underestimate them seldom make it past the second layer.

**Top layer:** A crumbling red rammed-earth kasbah on a hillside, its towers partly collapsed. Terraced fields and walnut trees fill the valley below, with snow-capped Atlas peaks behind.

**Midjourney:** `high atlas mountains, ruined red earth kasbah, crumbling towers, terraced fields, walnut trees, snow-capped peaks, morocco, warm afternoon light`

### West Africa (`region_west_africa`)

#### Tellemkoro
- **Key:** `gate_dungeon_tellemkoro`
- **State:** `STATE_EASTERN_MALI`
- **Inner tileset:** Cavern
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Along the Bandiagara escarpment, small dwellings and granaries cling to the cliff face, left by a people who lived there before the present villagers and are remembered only as the Tellem. Among the old cliff dwellings, one doorway leads not into a shallow chamber but into the rock itself. Tellemkoro descends through dry sandstone caverns, narrow chimneys, and great echoing chambers lit by shafts of sunlight that should not reach so far underground. The creatures within are quick and agile climbers, and the dungeon favours sheer drops over level ground.

**Top layer:** A towering sandstone escarpment with small mud cliff dwellings and granaries clinging to its face, one dark doorway among them. A Sahel village and baobab trees lie at its foot.

**Midjourney:** `bandiagara escarpment, sandstone cliff face, ancient mud cliff dwellings, small granaries, dark doorway in rock, sahel village, baobab trees, warm ochre light`

#### Igbo Ojiji
- **Key:** `gate_dungeon_igbo_ojiji`
- **State:** `STATE_YORUBA_STATES`
- **Inner tileset:** Tropical
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the forests of the Yoruba country, sacred groves are set aside and left untouched, their trees never felled. Igbo Ojiji, the Grove of Shadows, is one such grove, where the canopy closes so tightly that no daylight reaches the ground and a path between two great iroko trees leads somewhere the grove itself does not. Within lies a tropical dungeon of humid jungle, vine-choked shrines, and pools of still black water, where the trees themselves seem to watch and the animals are far larger than any outside.

**Top layer:** A dense, dim rainforest grove with two giant iroko trees framing a narrow path. Carved wooden figures stand among the roots, and thin shafts of light pierce the humid mist.

**Midjourney:** `west african rainforest, sacred grove, two giant iroko trees, carved wooden figures among roots, narrow path between trunks, dim green canopy light, humid mist, shafts of light`

### Equatorial Africa (`region_equatorial_africa`)

#### Mokele
- **Key:** `gate_dungeon_mokele`
- **State:** `STATE_CONGO_ORIENTALE`
- **Inner tileset:** Tropical
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the Ituri forest, where the trees grow so densely that a traveller can walk for days without seeing the sky, the forest people speak of a place where the river runs backwards. Mokele is that place: a bend of a slow brown river where the water flows into a hollow under the roots of a colossal tree rather than away from it. The dungeon beyond is a sweltering tangle of jungle layers, flooded forest, and overgrown terraces, home to great reptiles, swarming insects, and things that move in the canopy just out of sight.

**Top layer:** A slow brown jungle river bending toward a colossal tree, its water flowing into a dark hollow beneath the buttress roots. Dense canopy overhead, green gloom and mist.

**Midjourney:** `congo rainforest, ituri forest, slow brown jungle river, colossal tree with buttress roots, river flowing into dark hollow under roots, dense canopy, humid mist, green gloom`

#### Shimo la Shaba
- **Key:** `gate_dungeon_shimo_la_shaba`
- **State:** `STATE_KATANGA`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> The hills of Katanga are so rich in copper that in places the bare ground is stained green, and the people there have smelted the metal into ingots since long before outsiders came looking for it. Shimo la Shaba, the Copper Pit, is a hillside shaft whose walls are crusted with malachite and whose depths open into caverns veined with green and blue ore. Its denizens have hides that turn aside blades like plate armour, and the dungeon's chests are prized above all for copper and the rarer metals found alongside it.

**Top layer:** Rolling savanna hills with patches of bare ground stained green by copper ore. A dark shaft opens in the hillside, its rim crusted with malachite, among sparse miombo woodland.

**Midjourney:** `katanga copper hills, green malachite-stained earth, dark hillside shaft, rolling savanna, sparse miombo woodland, red soil, bright sunlight`

### Southern Africa (`region_southern_africa`)

#### Diepkloof
- **Key:** `gate_dungeon_diepkloof`
- **State:** `STATE_TRANSVAAL`
- **Inner tileset:** Cavern
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the dolomite hills of the highveld, sinkholes and caves riddle the ground, many of them filled with the bones of animals that fell in long ago. Diepkloof, the Deep Ravine, begins in a wooded gully where a cave mouth is half-hidden by wild figs whose roots pour down into the dark. Inside are dry caverns full of brittle flowstone, bone-choked chambers, and shafts that drop out of reach of any rope. The dungeon is unusually fond of ambushes, and parties speak of beasts that wait patiently in the dark until the lamps are at their dimmest.

**Top layer:** A wooded ravine cutting into golden highveld grassland, with a cave mouth half-hidden by wild fig roots cascading down the rock. Dolomite outcrops and warm evening light.

**Midjourney:** `south african highveld, dolomite hills, wooded ravine, cave mouth under cascading wild fig roots, golden grassland, rocky outcrops, warm evening light`

#### Bone Shoal
- **Key:** `gate_dungeon_bone_shoal`
- **State:** `STATE_HEREROLAND`
- **Inner tileset:** Drowned City
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> On the fog-bound Skeleton Coast, where the Namib desert meets the cold Atlantic, the beaches are littered with whale bones and the timbers of wrecked ships. One wreck lies far inland among the dunes, its hull half-buried in sand and its hold leading down into Bone Shoal. Beneath the desert, impossibly, lies a drowned city: flooded streets, sunken halls, and tidal pools where barnacled stone columns rise from dark water. Scholars cite it as the clearest evidence that a dungeon's theme owes nothing to the land around it.

**Top layer:** The hull of a wooden sailing ship half-buried among desert dunes, far from the surf. Whale bones lie scattered on the sand, and thick coastal fog rolls in from the cold ocean.

**Midjourney:** `skeleton coast, namib desert, thick coastal fog, wooden shipwreck buried in sand dunes far inland, whale bones, cold atlantic surf, desolate, muted grey light`

### East Africa (`region_east_africa`)

#### Suswa
- **Key:** `gate_dungeon_suswa`
- **State:** `STATE_RIFT_VALLEY`
- **Inner tileset:** Volcanic
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Mount Suswa rises from the floor of the Great Rift Valley as a double-rimmed volcano, its outer crater holding a ring of grassland and its inner crater an island of rock surrounded by a deep moat. The mountain's flanks are threaded with lava tubes where baboons shelter from the sun, and in one of them the passage goes down and down, growing hot and loud with the rumble of molten rock. The Suswa dungeon is all black basalt and fire, its galleries lit by lava falls and patrolled by creatures that seem to be shaped from the mountain itself.

**Top layer:** A volcanic crater rim rising above golden Rift Valley savanna, with acacia trees and a dark lava tube opening in the slope. The rift escarpment is visible in the heat haze.

**Midjourney:** `great rift valley, volcanic crater rim, lava tube entrance, acacia trees, golden savanna, rift escarpment in distance, heat haze, dramatic sky`

#### Debre Sela
- **Key:** `gate_dungeon_debre_sela`
- **State:** `STATE_AMHARA`
- **Inner tileset:** Classic
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the highlands of Lasta, churches have been carved downwards out of solid red rock, their roofs level with the ground and their walls standing in deep trenches. Debre Sela, the Mountain of Rock, is a carved doorway in the floor of one such trench that no stonemason ever made. Beneath it runs a dungeon of rock-hewn halls, pillared chambers, and narrow passages cut with impossible precision, guarded by silent sentinels of stone. The deeper the layers go, the more the carvings resemble a palace rather than a place of worship.

**Top layer:** A deep trench cut into red volcanic rock on a highland plateau, with a carved doorway set into its floor leading down into darkness. Junipers and dry grass around the rim, soft morning light.

**Midjourney:** `ethiopian highlands, rock-hewn church, deep trench carved in red volcanic rock, carved doorway in the ground, juniper trees, highland plateau, soft morning light`

---

## East Asia

### Indochina (`region_indochina`)

#### Prasat Khmoch
- **Key:** `gate_dungeon_prasat_khmoch`
- **State:** `STATE_CAMBODIA`
- **Inner tileset:** Tropical
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_02`

> In the forests north of the great lake, the ruins of ancient temple cities lie half-swallowed by the jungle, their towers carved with serene faces and their courtyards split by strangler figs. Prasat Khmoch, the Ghost Temple, is a sanctuary whose inner shrine opens onto a stairway that descends into the roots. Below is a tropical dungeon of overgrown galleries, jungle courtyards, and flooded terraces where stone faces watch from every wall. The jungle inside is more alive than the one outside, and it grows back over the path a party has cut behind them.

**Top layer:** A sandstone temple tower carved with serene faces, half-swallowed by strangler fig roots in dense jungle. Moss and monsoon mist, dappled light.

**Midjourney:** `angkor style temple ruin, sandstone tower with carved faces, strangler fig roots over stone, dense cambodian jungle, monsoon mist, moss, dappled light`

#### Hang May
- **Key:** `gate_dungeon_hang_may`
- **State:** `STATE_ANNAM`
- **Inner tileset:** Cavern
- **Suggested depth:** 9
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the limestone mountains between Annam and Laos, the rivers vanish underground into some of the largest caves in the world. Hang May, the Cloud Cave, is a river cave so vast that clouds form beneath its roof and a jungle grows in the light of its collapsed skylights. Past the last skylight the cave becomes a dungeon of enormous caverns, underground rivers, and calcite terraces stacked like rice paddies. It is the deepest dungeon of the region, and parties that enter it plan for weeks underground.

**Top layer:** Jungle-covered karst mountains with an enormous cave mouth swallowing a river. Clouds drift out of the cave into the morning mist.

**Midjourney:** `vietnamese karst mountains, enormous cave mouth, jungle river flowing into cave, clouds drifting out of cave, dense tropical forest, limestone cliffs, morning mist`

### Indonesia (`region_indonesia`)

#### Kawah Biru
- **Key:** `gate_dungeon_kawah_biru`
- **State:** `STATE_EAST_JAVA`
- **Inner tileset:** Volcanic
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the Ijen highlands of eastern Java, sulphur miners descend into a smoking crater to break yellow crusts from the vents beside an acid-green lake. At night the vents burn with an eerie blue flame, and among them is a fissure called Kawah Biru, the Blue Crater, whose fire never goes out. Beyond the blue flames lies a dungeon of volcanic rock, sulphur pools, and choking fumes, where the heat is matched by poison in the air. Delvers who have survived it insist that the blue fire burns brighter whenever a party enters.

**Top layer:** A volcanic crater at night with a turquoise acid lake, yellow sulphur deposits, and blue flames burning from a fissure in the crater wall. Toxic smoke drifts across the scene.

**Midjourney:** `ijen volcano, crater with turquoise acid lake, yellow sulphur deposits, blue fire flames from rock fissure, toxic smoke, night, rocky crater walls, eerie blue glow`

#### Rimba Sunyi
- **Key:** `gate_dungeon_rimba_sunyi`
- **State:** `STATE_WEST_BORNEO`
- **Inner tileset:** Tropical
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Deep in the interior of Borneo the rainforest is never silent: insects, birds, and apes fill it with noise day and night. Rimba Sunyi, the Silent Forest, is the one place where they fall quiet, a ring of ancient dipterocarps around a sunken clearing where nothing calls and nothing moves. A path down into the clearing leads into a tropical dungeon of giant ferns, pitcher plants as large as barrels, and lianas thick enough to walk on. The silence follows a party all the way down.

**Top layer:** A sunken jungle clearing ringed by towering dipterocarp trees, with pitcher plants and ferns on its slopes and still, humid mist hanging over the hollow.

**Midjourney:** `borneo rainforest, towering dipterocarp trees, sunken jungle clearing, giant pitcher plants, lianas, ferns, still humid mist, eerie silence`

### South China (`region_south_china`)

#### Jiulong Dong
- **Key:** `gate_dungeon_jiulong_dong`
- **State:** `STATE_GUANGXI`
- **Inner tileset:** Cavern
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Along the rivers of Guangxi, limestone peaks rise like teeth from the rice fields, and nearly every one is hollow. Jiulong Dong, the Nine Dragons Cave, opens at the waterline of one of these peaks and can be reached only by boat. Its first chambers are hung with formations that the boatmen say resemble coiled dragons; past them lies a dungeon of vast caverns, stone forests, and underground lakes, threaded by nine branching passages that never lead the same way twice.

**Top layer:** Steep karst peaks rising from a river and rice paddies, with a cave opening at the waterline of the nearest peak and a bamboo raft drifting toward it. Soft morning mist.

**Midjourney:** `guilin karst peaks, li river, cave entrance at waterline, bamboo raft, rice paddies, misty mountains, chinese landscape, soft morning light`

#### Wuliang Lin
- **Key:** `gate_dungeon_wuliang_lin`
- **State:** `STATE_YUNNAN`
- **Inner tileset:** Tropical
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the far south of Yunnan, tropical forests climb the hills toward the borders of Laos and Burma, sheltering wild elephants and countless birds. Wuliang Lin, the Boundless Forest, is entered beneath a great banyan whose aerial roots have grown into a living gateway. Inside, the forest goes on in every direction with no end that any party has found, layer after layer of humid jungle, bamboo thickets, and swollen streams. Monkeys follow delvers through the canopy, and not all of them are monkeys.

**Top layer:** A giant banyan tree in tropical hill forest, its aerial roots forming a natural archway. Bamboo stands around it, mist and green shadows.

**Midjourney:** `xishuangbanna rainforest, giant banyan tree, aerial roots forming archway, tropical hill forest, bamboo, mist, green shadows, southern china`

### North China (`region_north_china`)

#### Khara-Khoto
- **Key:** `gate_dungeon_khara_khoto`
- **State:** `STATE_ALXA`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_01`

> On the edge of the Gobi, the earthen walls of Khara-Khoto, the Black City, stand alone in the desert, abandoned long ago when the river that fed it changed its course. Within the ruined city, a stupa near the western wall has a doorway that leads not into the stupa but beneath the sand. Below lies a dungeon of buried halls, treasure vaults, and tombs filled with sand-scoured statues, and travellers say that on still nights the old city's market can be heard below the dunes.

**Top layer:** The ruined earthen walls of a desert city with white stupas along them, half-buried by sand dunes. Dead poplar trees stand outside the walls under a sunset sky.

**Midjourney:** `khara-khoto, ruined earthen city walls, white buddhist stupas, gobi desert dunes, dead poplar trees, sunset sky, sand drifting over ruins`

#### Dixia Gong
- **Key:** `gate_dungeon_dixia_gong`
- **State:** `STATE_XIAN`
- **Inner tileset:** Classic
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Around the old capital of Xi'an the plain is dotted with grassy mounds, the burial hills of emperors and princes, most of them never opened. Dixia Gong, the Underground Palace, opens beneath one of the smaller mounds, through a carved gate set into its flank. Behind it stretch halls laid out like an imperial palace: courtyards, throne rooms, armouries, and long corridors lined with ranks of soldiers in clay and bronze, which do not always stay in their ranks. Its deepest layers are said to hold rivers of quicksilver.

**Top layer:** A large grassy burial mound on the loess plain, with a carved stone gate set into its flank and stone guardian statues lining the approach. Persimmon trees and hazy sunlight.

**Midjourney:** `guanzhong plain, grassy imperial burial mound, carved stone gate in hillside, stone guardian statues along approach, loess fields, persimmon trees, hazy sunlight, ancient china`

### Northeast Asia (`region_northeast_asia`)

#### Ognennaya Past
- **Key:** `gate_dungeon_ognennaya_past`
- **State:** `STATE_KAMCHATKA`
- **Inner tileset:** Volcanic
- **Suggested depth:** 9
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Kamchatka is a land of smoking volcanoes, geyser fields, and steaming rivers, where the bears grow larger than anywhere else. Ognennaya Past, the Fiery Maw, opens in a valley of geysers at the foot of an active cone: a vent from which no steam rises, only shimmering heat. Below lies one of the deepest volcanic dungeons known, a descent through scorching galleries, magma lakes, and chambers of crystalline obsidian. Even the local hunters, who fear little, will not camp within sight of it.

**Top layer:** A valley of geysers and steaming vents beneath an active volcanic cone, with autumn tundra colours. One dark vent in the foreground gives off no steam, only heat shimmer.

**Midjourney:** `kamchatka, valley of geysers, steaming vents, active volcanic cone, autumn tundra colors, dark vent with heat shimmer, rugged wilderness, dramatic clouds`

#### Hyoketsu
- **Key:** `gate_dungeon_hyoketsu`
- **State:** `STATE_TOKAI`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> At the northern foot of Mount Fuji lies a dense forest grown over old lava flows, its ground hollowed by caves where ice survives through the summer. Hyoketsu, the Ice Cave, begins as one of these lava caves, but its ice does not stop where the others do. Within, columns of ice rise from the floor like the pillars of a shrine, frozen lakes reflect lantern light into endless distances, and delvers report a cold that bites through any amount of wool or fur. The forest above it is quiet, and the locals advise visitors not to stray from the path.

**Top layer:** A dense, mossy forest growing over lava rock, with twisted roots and a frosted cave opening in the ground. Mount Fuji is visible through a gap in the trees; cold mist lingers.

**Midjourney:** `aokigahara forest, mount fuji in background, moss-covered lava rock, twisted tree roots, frosted ice cave entrance, cold mist, quiet forest, japanese landscape`

### Siberia (`region_siberia`)

#### Buus Khaya
- **Key:** `gate_dungeon_buus_khaya`
- **State:** `STATE_YAKUTSK`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the far north of Siberia the ground is frozen to great depths, and the riverbanks sometimes give up mammoth tusks and the bodies of beasts long extinct. Buus Khaya, the Ice Rock, is a frozen bluff on a river terrace where a cavern opens into the permafrost itself. Inside, the walls are made of ancient ice and black earth, studded with bones, tusks, and whole creatures frozen in place, some of which wake when warmth reaches them. The deeper layers are colder than any Siberian winter.

**Top layer:** A frozen river bluff of exposed permafrost with mammoth tusks protruding from the earth and a dark cavern at its base. Larch taiga on top, snow, low winter sun.

**Midjourney:** `yakutia, permafrost river bluff, exposed mammoth tusks, frozen earth wall, dark cavern opening, larch taiga, snow, low winter sun, extreme cold`

#### Shamanka
- **Key:** `gate_dungeon_shamanka`
- **State:** `STATE_IRKUTSK`
- **Inner tileset:** Drowned City
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> On Olkhon island in Lake Baikal, a twin-peaked rock called Shamanka juts into the water and has been held sacred by the Buryat people for generations. At the rock's foot a cave opens just above the waterline, and from it a passage descends below the surface of the deepest lake in the world. Beneath lies a drowned city of stone and wood, its streets submerged in water so clear and cold that delvers can see far below their feet, and its towers lost in darkness further down. The things that live in Baikal's depths seem to have found their way in.

**Top layer:** A twin-peaked marble rock cape jutting into crystal-clear lake water, with a cave at the waterline. Colourful prayer ribbons on wooden posts, steppe hills behind.

**Midjourney:** `lake baikal, olkhon island, shamanka rock, twin-peaked marble cliff, crystal clear water, cave at waterline, colourful prayer ribbons on wooden posts, steppe hills`

### Oceania (`region_oceania`)

#### Grose Hollow
- **Key:** `gate_dungeon_grose_hollow`
- **State:** `STATE_NEW_SOUTH_WALES`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> West of Sydney, the Blue Mountains are a maze of sandstone cliffs and deep valleys hazed blue by the eucalyptus forest, with caves hidden in many of their gorges. Grose Hollow opens at the foot of a waterfall in one of the most remote valleys, behind the curtain of falling water. Inside lies a cavern dungeon of crystal-hung chambers, underground rivers, and tight passages that open suddenly onto halls of glittering limestone. Its denizens are strange even by dungeon standards, with marsupial forms twisted into something far more dangerous.

**Top layer:** Sandstone cliffs above a valley of eucalyptus forest in blue haze, with a waterfall in the foreground and the dark outline of a cave behind its curtain. Tree ferns and morning light.

**Midjourney:** `blue mountains australia, sandstone cliffs, eucalyptus forest valley, blue haze, waterfall curtain, cave behind waterfall, tree ferns, morning light`

#### Ketetahi
- **Key:** `gate_dungeon_ketetahi`
- **State:** `STATE_NORTH_ISLAND`
- **Inner tileset:** Volcanic
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the volcanic heart of the North Island, three great mountains rise from a desert plateau of ash and tussock, and their slopes steam with hot springs and vents. Ketetahi is one such vent on the flank of a smouldering cone, where the springs run boiling and the ground opens into a glowing fissure. The dungeon below is crossed by rivers of lava, pools of sulphurous water, and ash-choked caverns, and its denizens seem to rise from the very rock as a party passes.

**Top layer:** A barren volcanic plateau of ash and tussock grass with steaming vents and a glowing fissure in the foreground. A conical volcano and emerald crater lakes behind.

**Midjourney:** `tongariro volcanic plateau, steaming vents, glowing rock fissure, tussock grass, conical volcano, emerald crater lakes, red ash slopes, dramatic sky`

---

## North America

### Canada (`region_canada`)

#### Nunataq
- **Key:** `gate_dungeon_nunataq`
- **State:** `STATE_NUNAVUT`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> On the high ice caps of the far Arctic, black rock peaks sometimes pierce the ice like the tips of buried mountains. One of them hides an opening at its base, where the ice has pulled away from the rock, leading down into Nunataq. The dungeon is a labyrinth between rock and ice: frozen chasms, ice-locked galleries, and chambers where the old mountain beneath the ice is still visible through walls of blue. Few dungeons are as far from help, and few parties reach it without losing someone to the journey.

**Top layer:** A black rock peak rising out of an endless white ice cap, with a dark gap at its base where the ice has pulled away. Polar twilight and a faint aurora.

**Midjourney:** `arctic ice cap, black rock nunatak peak, endless white ice, dark gap at base of rock, polar twilight, faint aurora, desolate, cold blue light`

#### Red Deer Hollow
- **Key:** `gate_dungeon_red_deer_hollow`
- **State:** `STATE_ALBERTA`
- **Inner tileset:** Cavern
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Along the Red Deer River the prairie drops suddenly into badlands, a broken country of striped hills, hoodoos, and dry gullies where the bones of giant beasts weather out of the rock. Red Deer Hollow is a cave at the foot of a cluster of hoodoos, its mouth framed by fossil bones like the ribs of a great beast. Inside lie dry caverns of banded rock, collapsed galleries, and chambers full of bone, and delvers report that the skeletons within do not always stay still.

**Top layer:** Badlands of striped sedimentary hills and hoodoo rock formations below the prairie edge, with a cave mouth framed by huge fossil bones. Golden hour light.

**Midjourney:** `alberta badlands, red deer river valley, striped sedimentary hills, hoodoo rock formations, cave mouth framed by giant fossil bones, prairie horizon, golden hour, dry gullies`

### Pacific Coast (`region_pacific_coast`)

#### Tahoma Vent
- **Key:** `gate_dungeon_tahoma_vent`
- **State:** `STATE_WASHINGTON`
- **Inner tileset:** Volcanic
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Tahoma, the great white mountain of the Cascades, rises above dense forests of fir and cedar, its summit crowned with glaciers. Beneath the ice, though, the mountain is very much alive. Tahoma Vent opens in a steaming fissure high on its flanks, where a lava tube runs back into the volcano beneath the glaciers. The dungeon beyond is one of fire rather than ice: basalt galleries, lava rivers, and magma chambers, their passages wreathed in steam where meltwater seeps in from the glaciers above.

**Top layer:** A snow-capped stratovolcano with a steaming fissure at the edge of a glacier. Alpine meadow with wildflowers and old-growth fir forest below.

**Midjourney:** `mount rainier, snow-capped stratovolcano, glacier edge, steaming rock fissure, alpine meadow with wildflowers, old growth fir forest, dramatic clouds`

#### Kaibab Vault
- **Key:** `gate_dungeon_kaibab_vault`
- **State:** `STATE_ARIZONA`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Below the Kaibab plateau, the Colorado River has carved a canyon a mile deep, its walls banded red, ochre, and grey. Partway down one of its side canyons, a doorway carved with unfamiliar figures stands in the sheer rock, flanked by columns cut from the canyon wall. Kaibab Vault is a dungeon of sandstone halls, sarcophagi, and treasure vaults, sealed rooms full of sand and corridors guarded by traps. Its style resembles nothing that any people of the region has ever built, which has done much to fuel the debate about where dungeon themes come from.

**Top layer:** A desert side canyon with layered red rock walls, and a carved stone doorway with columns cut directly into the cliff face. Junipers, ravens, warm sunset light and deep shadows.

**Midjourney:** `grand canyon, layered red rock canyon walls, carved stone doorway with columns in cliff face, desert side canyon, juniper, ravens, warm sunset light, deep shadows`

### Great Plains (`region_great_plains`)

#### Paha Sapa
- **Key:** `gate_dungeon_paha_sapa`
- **State:** `STATE_SOUTH_DAKOTA`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> The Black Hills rise from the Great Plains as an island of dark pine forest, sacred to the Lakota and riddled beneath with caves whose wind breathes in and out of the ground. Paha Sapa opens in a small cleft among granite outcrops, a cave whose breath is warm and smells of iron. Inside it branches into a maze of crystal-lined passages, boxwork formations, and chambers glittering with calcite, so complex that parties mark their path in chalk only to find the marks gone on the way back.

**Top layer:** Dark ponderosa pine forest on rolling hills with granite spires, and a narrow rock cleft cave entrance in the foreground. Bison on the plains beyond, evening light.

**Midjourney:** `black hills, dark ponderosa pine forest, granite spires, narrow rocky cleft cave entrance, great plains on horizon, bison, clear sky, evening light`

#### Ville Engloutie
- **Key:** `gate_dungeon_ville_engloutie`
- **State:** `STATE_LOUISIANA`
- **Inner tileset:** Drowned City
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the bayous south of the Mississippi, cypress trees stand knee-deep in still brown water, their branches draped with Spanish moss. Deep in one such swamp, the roof of a stone building rises from the water with no land around it, its upper windows just above the surface. The trappers who found it call it the Ville Engloutie, the Swallowed Town. Through the windows lies a drowned city of flooded streets, sunken plazas, and moss-hung halls, home to great alligators and worse things that hunt beneath the black water.

**Top layer:** A bayou of bald cypress trees and Spanish moss, with the stone roof and upper windows of a building rising from the black water. A wooden pirogue nearby, dusk and fireflies.

**Midjourney:** `louisiana bayou, bald cypress trees, spanish moss, black still water, stone building roof and windows rising from swamp, wooden pirogue, dusk, fireflies`

### Atlantic Coast (`region_atlantic_coast`)

#### Echo Deep
- **Key:** `gate_dungeon_echo_deep`
- **State:** `STATE_KENTUCKY`
- **Inner tileset:** Cavern
- **Suggested depth:** 9
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Beneath the green hills of Kentucky lie the longest known caves in the world, a labyrinth of passages and underground rivers that has never been fully mapped. Echo Deep opens near the river that runs through them, in a sinkhole hidden by sycamores. The dungeon below is a vast cave system of underground rivers, gypsum-crusted passages, and domed halls, where every sound echoes back long after it should have faded. Some of the echoes come back with words that were never spoken.

**Top layer:** A forested sinkhole among green rolling hills, shaded by sycamores, with a limestone ledge over a cave mouth breathing cool mist. Ferns and summer light.

**Midjourney:** `kentucky karst, forested sinkhole, sycamore trees, limestone ledge over cave entrance, cool mist, green rolling hills, ferns, summer light`

#### Pahayokee
- **Key:** `gate_dungeon_pahayokee`
- **State:** `STATE_FLORIDA`
- **Inner tileset:** Tropical
- **Suggested depth:** 3
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> The Everglades of southern Florida are a slow river of grass broken by hammocks of hardwood trees, mangrove islands, and alligator holes. Pahayokee, from the old name for the grassy waters, is a hammock deep in the sawgrass where the trees grow so densely that their canopy closes into a tunnel. The tunnel leads down into a tropical dungeon of swamp forest, mangrove tangles, and steaming pools, where the air is thick with insects and the water is never as shallow as it looks.

**Top layer:** An endless sawgrass marsh with a dense island of hardwood trees, a dark tunnel leading into its canopy. White egrets, humid haze, subtropical light.

**Midjourney:** `florida everglades, sawgrass marsh, dense tree hammock island, dark tunnel into canopy, mangroves, white egrets, humid haze, subtropical light`

### Central America (`region_central_america`)

#### Ch'en Ha
- **Key:** `gate_dungeon_chen_ha`
- **State:** `STATE_YUCATAN`
- **Inner tileset:** Drowned City
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> The flat limestone of the Yucatan has no rivers on its surface; its water runs underground and comes to light only in cenotes, round sinkholes of clear blue water hung with vines. Ch'en Ha, the Water Cave, is a cenote whose stone stair descends past the waterline and keeps going, dry-shod, into a drowned city beneath the jungle. Stepped temples rise from flooded plazas, carved stelae stand waist-deep in water, and the underground river that feeds the cenote runs through streets no one has walked in living memory.

**Top layer:** A round cenote with vines and roots hanging into clear turquoise water and an ancient carved stone stair descending into it. Sunbeams fall through the jungle opening above.

**Midjourney:** `yucatan cenote, round limestone sinkhole, clear turquoise water, hanging vines and roots, ancient carved stone staircase into water, sunbeams, tropical forest, maya`

#### Uxwitz
- **Key:** `gate_dungeon_uxwitz`
- **State:** `STATE_GUATEMALA`
- **Inner tileset:** Tropical
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_02`

> In the lowland forests of the Peten, the jungle conceals the stepped pyramids of cities abandoned centuries before any European arrived, their summits rising above the canopy like islands. Uxwitz, the Three Hills, is a group of three overgrown pyramids, the largest with a temple doorway at its summit that leads downward rather than in. Below is a tropical dungeon of buried plazas, jungle-choked courts, and overgrown palaces, home to jaguars, serpents, and creatures out of the old carvings.

**Top layer:** Three overgrown stepped pyramids rising above a sea of jungle canopy, a temple on the tallest summit. Morning mist, howler monkeys and toucans, golden sunrise.

**Midjourney:** `peten jungle, three overgrown maya pyramids rising above canopy, temple on summit, morning mist, tropical rainforest, howler monkeys, toucans, golden sunrise`

---

## South America

### Brazil (`region_brazil`)

#### Igapó Escuro
- **Key:** `gate_dungeon_igapo_escuro`
- **State:** `STATE_AMAZONAS`
- **Inner tileset:** Tropical
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> When the rivers of the Amazon flood each year, they spread for miles into the forest, drowning the trunks of the trees and turning the jungle into a dim maze of black water. Igapó Escuro, the Dark Flooded Forest, is a stretch of such forest where the water never recedes, even in the dry season. Canoes can paddle into it from the river, and beyond a certain point the forest becomes a dungeon: layer upon layer of drowned jungle, rotting wood, and giant lilies, haunted by caimans, anacondas, and things that hunt in the dark water beneath the boats.

**Top layer:** A flooded forest of tree trunks standing in black, mirror-like water, with giant water lilies and a dugout canoe drifting between the trunks. Dim green light and mist.

**Midjourney:** `amazon flooded forest, igapo, black water reflections, tree trunks standing in water, dugout canoe, giant water lilies, dim green light, humid mist`

#### Gruta Diamantina
- **Key:** `gate_dungeon_gruta_diamantina`
- **State:** `STATE_BAHIA`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the Chapada Diamantina, the tablelands of the Bahian interior, diamond hunters have long worked the rivers and gravels below the cliffs. Among the caves of the plateau is the Gruta Diamantina, whose entrance leads to a pool of water so clear and blue that it seems to glow when sunlight falls into it. Past the pool, the cave becomes a dungeon of sparkling caverns, crystal-encrusted galleries, and underground rivers, and its chests are known above all for gemstones.

**Top layer:** Flat-topped sandstone mesas over dry scrubland, with a cave opening in a cliff and a single sunbeam falling onto a glowing blue pool inside.

**Midjourney:** `chapada diamantina, flat-topped mesas, sandstone cliffs, cave entrance with glowing blue pool, sunbeam into cave, dry scrubland, warm light`

### Andes (`region_andes`)

#### Ch'amak Uta
- **Key:** `gate_dungeon_chamak_uta`
- **State:** `STATE_LA_PAZ`
- **Inner tileset:** Drowned City
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Lake Titicaca lies so high in the Andes that the air is thin and the light hard and bright, and its people have long told of a city that the lake swallowed. Ch'amak Uta, the Dark House, is reached by reed boat from the shore: a ring of carved stones standing in the shallows, with a stone stairway descending between them into the lake. Below the surface, the stair leads to a drowned city of massive fitted stone, flooded temples, and sunken terraces, cold as the lake itself and inhabited by creatures that swim through the streets as though the water were air.

**Top layer:** A high Andean lake of intense blue with a ring of carved standing stones in the shallows and a stairway leading down between them. A totora reed boat nearby, snow-capped cordillera behind.

**Midjourney:** `lake titicaca, high altitude andean lake, totora reed boat, ring of carved standing stones in shallow water, stone stairway into lake, snow-capped cordillera, intense blue sky, thin bright light`

#### Nina Uchku
- **Key:** `gate_dungeon_nina_uchku`
- **State:** `STATE_AREQUIPA`
- **Inner tileset:** Volcanic
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Above the white stone city of Arequipa rise three great volcanoes, the most perfect of them a symmetrical snow-capped cone. On the high desert at their feet, among lava flows and fields of pumice, a fissure called Nina Uchku, the Fire Hole, breathes heat into the cold mountain air. Beneath it lies a volcanic dungeon of glowing galleries and magma chambers, and its denizens are said to resemble the burning spirits of old mountain legends.

**Top layer:** A high Andean desert of pumice and lava with a smoking fissure in the foreground and a perfect snow-capped volcanic cone behind. Vicuñas grazing in harsh, clear light.

**Midjourney:** `el misti volcano, snow-capped conical volcano, high andean desert, pumice fields, smoking rock fissure, vicunas, clear thin air, harsh sunlight`

### La Plata (`region_la_plata`)

#### Glaciar del Silencio
- **Key:** `gate_dungeon_glaciar_del_silencio`
- **State:** `STATE_PATAGONIA`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 9
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the far south of Patagonia, the great southern ice field pours glaciers down into turquoise lakes, their fronts collapsing into the water with a sound like cannon fire. One glacier, however, never calves and never makes a sound: the Glaciar del Silencio. Where it meets the lake, a tunnel opens in its face into a dungeon of blue ice, frozen caverns, and crevasses that plunge deeper than the glacier is thick. It is one of the deepest ice dungeons known, and the silence inside is so complete that parties communicate by hand signals rather than risk speaking.

**Top layer:** A massive blue glacier wall ending in a turquoise lake, with a tunnel opening at the waterline and icebergs floating in perfect stillness. Jagged Andean peaks under an overcast sky.

**Midjourney:** `patagonian glacier, massive blue ice wall, turquoise glacial lake, ice tunnel entrance at waterline, floating icebergs, jagged andes peaks, perfect stillness, overcast`

#### Tavarangue
- **Key:** `gate_dungeon_tavarangue`
- **State:** `STATE_BAJO_PARAGUAY`
- **Inner tileset:** Classic
- **Suggested depth:** 3
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_01`

> In the forests near the upper Parana, the red sandstone ruins of an old mission town stand among the trees: church walls, colonnades, and the stone houses of a settlement long abandoned. The Guarani call such ruins tavarangue, the town that was. Beneath the ruined church, a crypt stair leads into a dungeon of stone halls, cloisters, and vaulted chambers that seem to belong to a castle rather than a mission, garrisoned by armoured figures who guard the deeper layers in silence.

**Top layer:** Red sandstone mission ruins in subtropical forest: roofless church walls, a colonnade, and an overgrown courtyard with a dark crypt stairway. Warm, humid light.

**Midjourney:** `jesuit mission ruins, red sandstone church walls, colonnade, subtropical forest, overgrown courtyard, crypt stairway, warm humid light, paraguay`

### Gran Colombia (`region_gran_colombia`)

#### Mawari Sima
- **Key:** `gate_dungeon_mawari_sima`
- **State:** `STATE_GUAYANA`
- **Inner tileset:** Tropical
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the south of Guayana, flat-topped mountains called tepuis rise sheer from the rainforest, their summits isolated worlds of strange plants and constant rain. On the summit of one, a great round sinkhole plunges into the mountain, its floor covered in forest. The Pemon say the mawari, the mountain spirits, live there. Mawari Sima is the dungeon at the bottom of the pit: a tropical labyrinth of lost forest, waterfalls, and creatures found nowhere else.

**Top layer:** The summit of a flat-topped tepui with a giant circular sinkhole, its floor covered in forest. Waterfalls plunge off the cliffs and clouds roll across the plateau.

**Midjourney:** `venezuelan tepui, flat-topped mountain, giant circular sinkhole with forest at bottom, waterfalls plunging off cliffs, rolling clouds, lost world, rainforest below`

#### Guatavita
- **Key:** `gate_dungeon_guatavita`
- **State:** `STATE_CUNDINAMARCA`
- **Inner tileset:** Drowned City
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the highlands above Bogota lies Lake Guatavita, a round lake in a green crater where the Muisca once crowned their chiefs by covering them in gold dust and sending them out onto the water to make offerings. Treasure hunters have tried to drain it more than once. The dungeon of Guatavita is entered from a carved stone platform on the shore; its stair descends into a drowned city of gold-lit halls, flooded ceremonial plazas, and submerged temples, and its chests are said to be heavy with gold ore.

**Top layer:** A round emerald lake in a green crater in the Andean highlands, with a carved stone platform on the shore and a reed raft at its edge. Morning mist and golden light.

**Midjourney:** `lake guatavita, round emerald crater lake, green andean highlands, carved stone platform on shore, reed raft, morning mist, golden light, colombia`

---

## West and South Asia

### Near East (`region_near_east`)

#### Malakopi
- **Key:** `gate_dungeon_malakopi`
- **State:** `STATE_KONYA`
- **Inner tileset:** Classic
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the tuff valleys of the Anatolian plateau, people have carved homes, churches, and entire underground towns into the soft volcanic rock for millennia. Malakopi is one such underground town, its rolling stone doors and ventilation shafts much like those of its neighbours, except that it has more levels than anyone ever carved. Below the oldest cellars the dungeon proper begins: halls, chapels, storerooms, and guard posts cut with precision into living rock, defended by garrisons that seem to know every tunnel.

**Top layer:** A valley of fairy chimneys and soft tuff cliffs riddled with carved cave dwellings, with a large round rolling stone door beside a dark entrance. Dry plateau, warm sunrise.

**Midjourney:** `cappadocia, fairy chimney rock formations, soft tuff valley, carved cave dwellings, round rolling stone door, dry anatolian plateau, warm sunrise`

#### Khaznat al-Layl
- **Key:** `gate_dungeon_khaznat_al_layl`
- **State:** `STATE_TRANSJORDAN`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the mountains east of the Wadi Araba, the Nabataeans carved tombs and temples into the rose-red cliffs of their hidden city, reached only through a narrow winding gorge. Khaznat al-Layl, the Treasury of Night, is a carved facade in a side gorge that does not appear in any traveller's account, its columns and pediments cut in dark stone that seems to swallow the sun. Behind it lies a dungeon of rock-cut halls, burial chambers, and treasure vaults, where sand drifts through corridors far beneath the cliffs and guardians in ancient armour wait in the dark.

**Top layer:** A narrow rose-red sandstone gorge opening onto a carved classical facade with columns and pediment, cut in unnaturally dark stone. A sliver of sunlight, deep shadows.

**Midjourney:** `petra, narrow red sandstone gorge, carved classical facade in cliff, dark stone columns and pediment, sliver of sunlight, desert canyon, rose-red rock, deep shadows`

### Arabia (`region_arabia`)

#### Ubar
- **Key:** `gate_dungeon_ubar`
- **State:** `STATE_OMAN`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 8
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Along the frankincense routes of Dhofar, legend tells of a city of towers in the sands that grew proud and was swallowed by the desert. Ubar is the dungeon that bears its name: a collapsed sinkhole at the edge of the Empty Quarter, ringed by the stumps of fallen towers, with a stair leading down into the sand. Below lies a buried city of pillared halls, sand-filled streets, and royal tombs, where the wind can be heard howling even in the deepest layers and the sand moves like water around a party's feet.

**Top layer:** A collapsed sinkhole at the edge of great golden dunes, ringed by the ruined stumps of stone towers, a stair descending into it. Frankincense trees and heat haze.

**Midjourney:** `rub al khali, empty quarter dunes, collapsed sinkhole, ruined stone tower stumps, stair descending into sand, frankincense trees, heat haze, golden sand`

#### Bir Barhut
- **Key:** `gate_dungeon_bir_barhut`
- **State:** `STATE_YEMEN`
- **Inner tileset:** Cavern
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the desert of al-Mahra lies a huge round pit in the ground, which local tradition has long called the Well of Barhut and held to be the prison of evil spirits. Few have ever climbed down into it. Bir Barhut, the dungeon, begins at the bottom of the pit, where a cave opens into a labyrinth of dry caverns, cascading travertine, and chambers thick with the smell of sulphur. Its denizens are serpents, swarms, and stranger things, and they seem to drive parties downward rather than let them leave.

**Top layer:** An enormous circular sinkhole in a rocky desert plateau, its walls dotted with dark cave openings and its bottom lost in shadow. Birds circle above in harsh sunlight.

**Midjourney:** `well of barhut, enormous circular sinkhole, rocky yemeni desert plateau, dark cave openings in pit walls, harsh sunlight, deep shadow, birds circling, ominous`

### Greater Persia (`region_greater_persia`)

#### Takht-e Tariki
- **Key:** `gate_dungeon_takht_e_tariki`
- **State:** `STATE_FARS`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Near the ruins of the ancient Persian royal capital, the tombs of the old kings are carved high into a cliff face, their facades shaped like the fronts of palaces. Takht-e Tariki, the Throne of Darkness, is a tomb facade cut lower in the cliff than the others, its doorway at ground level and its reliefs showing a king whose features have been chiselled away. Inside lies a dungeon of pillared halls, royal burial vaults, and sand-swept treasuries, guarded by winged beasts of stone that move when no one is watching.

**Top layer:** A cliff face with cross-shaped royal tomb facades carved high up, and one lower facade with a ground-level doorway and defaced relief carvings. Dry plain, warm sunset, long shadows.

**Midjourney:** `naqsh-e rostam, cliff with cross-shaped royal tomb facades, ground level tomb doorway, persian relief carvings, dry plain, ancient persian ruins, warm sunset, long shadows`

#### Zendan-e Damavand
- **Key:** `gate_dungeon_zendan_e_damavand`
- **State:** `STATE_MAZANDARAN`
- **Inner tileset:** Volcanic
- **Suggested depth:** 9
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Damavand rises above the Alborz range as a lone volcanic cone, the highest mountain in the land, its summit steaming with sulphur vents. In the Shahnameh, the hero Fereydun chained the serpent-shouldered tyrant Zahhak in a cave beneath the mountain, where he is said to remain. Zendan-e Damavand, the Prison of Damavand, opens in a steaming cave on the mountain's flank: a volcanic dungeon of fire, chains, and brimstone, its layers descending toward something that rattles iron in the deep.

**Top layer:** The lone snow-capped cone of Damavand above the Alborz ridges, with yellow sulphur vents and a steaming cave mouth on its rocky flank. Clear sky.

**Midjourney:** `mount damavand, lone snow-capped volcanic cone, alborz mountains, yellow sulphur vents, steaming cave mouth, rugged rocky slopes, clear sky, persian highlands`

### Central Asia (`region_central_asia`)

#### Muz-Tör
- **Key:** `gate_dungeon_muz_tor`
- **State:** `STATE_KIRGHIZIA`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the high Tian Shan, glaciers fill the valleys between peaks, and the Kyrgyz herders bring their flocks beneath them only in summer. Muz-Tör, the Hall of Ice, opens where a glacier spills over a cliff into a high valley, its entrance a frozen arch above the summer pastures. Within, the glacier becomes a dungeon of frozen halls, ice bridges, and blue chambers where the cold is matched by howling winds that have no business blowing underground.

**Top layer:** A glacier spilling over a cliff into a high valley, with a frozen ice arch at its base. White yurts and grazing horses on the summer pasture below, jagged snowy peaks.

**Midjourney:** `tian shan mountains, glacier spilling over cliff, frozen ice arch entrance, high summer pasture, white yurts, grazing horses, jagged snowy peaks, crisp mountain light`

#### Kara Kala
- **Key:** `gate_dungeon_kara_kala`
- **State:** `STATE_MERZ`
- **Inner tileset:** Desert Tomb
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_01`

> Around the oasis of Merv, the ruins of cities built one beside another over millennia spread across the desert: fallen walls, mud-brick fortresses, and mausoleums standing alone in the sand. Kara Kala, the Black Fortress, is one of the ruined mud-brick keeps, its fluted walls darker than those of its neighbours. Inside its courtyard a stair leads down into a dungeon of buried halls, mausoleum vaults, and sand-choked streets, where the treasures of long-dead kings lie under the guard of their equally dead retainers.

**Top layer:** A ruined mud-brick fortress with dark, deeply fluted walls standing in the desert, a domed mausoleum in the distance. Dusty haze and golden light.

**Midjourney:** `merv ruins, ruined mud-brick fortress with fluted corrugated walls, karakum desert, distant domed mausoleum, dry steppe, dusty haze, golden light, central asia`

### South India (`region_south_india`)

#### Simhagiri
- **Key:** `gate_dungeon_simhagiri`
- **State:** `STATE_CEYLON`
- **Inner tileset:** Classic
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_02`

> In the forests of central Ceylon, a great rock rises sheer from the jungle, and on its summit lie the ruins of a palace built by a king who once ruled from the sky. Its old gateway was shaped as an enormous lion, of which only the stone paws remain. Simhagiri, the Lion Rock, is entered between those paws: a passage into the rock that leads to a dungeon of royal halls, painted galleries, terraced gardens, and guardrooms, held by a garrison of stone lions and armoured guardians.

**Top layer:** A massive rock monolith rising from jungle, with giant carved lion paws flanking a stairway at its base. Ruined terraces and water gardens below, dramatic clouds.

**Midjourney:** `sigiriya, massive rock monolith rising from jungle, giant carved lion paws gateway, ruined palace terraces, water gardens, tropical forest, dramatic clouds, sri lanka`

#### Irul Kaavu
- **Key:** `gate_dungeon_irul_kaavu`
- **State:** `STATE_TRAVANCORE`
- **Inner tileset:** Tropical
- **Suggested depth:** 4
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> Across Travancore, villages keep sacred groves called kaavu, patches of ancient forest left untouched around shrines to serpents and forest spirits. Irul Kaavu, the Dark Grove, is a kaavu high in the Western Ghats where stone serpent idols stand among the roots and the canopy never lets the sun through. Behind the shrine lies a tropical dungeon of rainforest, mossy terraces, and waterfalls, crawling with serpents of every size, and parties report that the forest grows thicker and darker with each layer.

**Top layer:** A sacred grove of ancient trees with stone serpent idols among the roots and small oil lamps flickering. Dense Western Ghats rainforest, monsoon mist, dim green light.

**Midjourney:** `kerala sacred grove, stone serpent idols, ancient tree roots, dense western ghats rainforest, monsoon mist, moss, small oil lamps, dim green light`

### Himalayas (`region_himalayas`)

#### Nagpo Dzong
- **Key:** `gate_dungeon_nagpo_dzong`
- **State:** `STATE_NGARI`
- **Inner tileset:** Classic
- **Suggested depth:** 7
- **Fallback entrance art:** `dungeon_layer_gate_top_castle_ruin_02`

> In the arid canyons of western Tibet, the ruins of a vanished kingdom cling to eroded clay cliffs, fortress walls and temples built into the very ridges. Nagpo Dzong, the Black Fortress, is a ruined citadel atop one such ridge, its walls riddled with cave chambers. Through one of these a tunnel leads into the ridge and down into a dungeon of stone halls, temple chambers, and guard towers rising and falling through the heart of the mountain, defended by warriors in lacquered armour who fight in perfect silence.

**Top layer:** Eroded clay canyon ridges with a ruined citadel on the highest one, cave dwellings riddling the cliff below it. Arid landscape, distant Himalayan peaks, harsh high-altitude light.

**Midjourney:** `guge kingdom ruins, western tibet, eroded clay canyon ridges, ruined citadel on ridge, cave dwellings in cliff, arid landscape, distant himalayan peaks, harsh high altitude light`

#### Gangri Phug
- **Key:** `gate_dungeon_gangri_phug`
- **State:** `STATE_HIMALAYAS`
- **Inner tileset:** Ice Cavern
- **Suggested depth:** 10
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the high valleys below the world's tallest peaks, glaciers grind slowly down from the snows toward the villages of the Sherpa and their monasteries. Gangri Phug, the Snow Mountain Cave, opens high on a glacier beneath one of the great peaks, a blue chasm that climbers and herders alike avoid. It is the deepest ice dungeon known, a descent through layer after layer of frozen halls, crevasses, and icefalls, where the cold and the thin air are as deadly as anything that lives there.

**Top layer:** A rubble-strewn glacier at the foot of a giant snowy Himalayan peak, with a blue ice chasm opening in its surface. Prayer flags on stone cairns, a distant monastery, dramatic clouds.

**Midjourney:** `himalayan glacier, khumbu, giant snowy peak, blue ice chasm, prayer flags on stone cairns, distant monastery, high altitude, dramatic clouds`

### North India (`region_north_india`)

#### Andheri Baori
- **Key:** `gate_dungeon_andheri_baori`
- **State:** `STATE_RAJPUTANA`
- **Inner tileset:** Drowned City
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the dry country of Rajputana, villages dug great stepwells, carving staircases down through many storeys to reach the water hidden below the desert. Andheri Baori, the Dark Stepwell, is one of these: a vast square shaft lined with zigzagging steps that descend far past where any water table should lie. At its bottom the water does not end in a pool but opens into a drowned city of pillared halls, submerged galleries, and flooded palaces, where shadows move beneath the water and the steps keep descending.

**Top layer:** A huge square stepwell with geometric zigzag staircases on all sides, descending to dark water far below. Carved sandstone pavilions on one side, Thar desert village around, warm sunset.

**Midjourney:** `chand baori stepwell, geometric zigzag staircases, deep square shaft, dark water at bottom, carved sandstone pavilions, thar desert village, warm sunset light`

#### Krem Ksuid
- **Key:** `gate_dungeon_krem_ksuid`
- **State:** `STATE_ASSAM`
- **Inner tileset:** Tropical
- **Suggested depth:** 6
- **Fallback entrance art:** `dungeon_layer_gate_top_cave_01`

> In the Khasi hills, among the wettest places on earth, rivers pour off the plateau into gorges choked with rainforest, and villagers train the roots of rubber trees across streams to grow living bridges. Krem Ksuid, the Spirit Cave, is reached by such a root bridge, spanning a gorge to a cave mouth curtained by ferns and falling water. Inside, the cave soon gives way to a tropical dungeon of humid jungle, root-tangled chambers, and roaring streams, where living roots move by themselves to close the way behind a party.

**Top layer:** A living root bridge spanning a rainforest gorge over a clear stream and mossy boulders, leading to a cave mouth behind ferns and a thin waterfall. Heavy rain mist, lush green.

**Midjourney:** `meghalaya, living root bridge, rainforest gorge, mossy boulders, clear stream, cave mouth behind ferns and waterfall, heavy rain mist, lush green`

---

## Open threads

- The existing Tiefburg localization ties its formation to the mana surge that came with the Gate. Since dungeons now spawn during play, it may be worth rewording it to the same time-independent style as the entries above.
- The three proposed tilesets need to be registered in `mod/common/ideologies/000_gate_dungeon_background.txt` and their layer images created before any of the dungeons using them can be implemented.
- Each dungeon above describes a unique entrance; until dedicated top layer images exist, the fallback entrance art can be used.
- Some dungeon descriptions hint at signature rewards (ore in Silbergrund and Shimo la Shaba, gemstones in Gruta Diamantina and Qabr ar-Raml, gold ore in Guatavita). These could be reflected in their chest tables once rewards are designed per dungeon.
