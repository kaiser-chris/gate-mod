import glob
from wand.image import Image
from pathlib import Path

for png_image in (
    glob.iglob("gfx/models/skins/skins_textures/body/Mousefolk/male/*.png")
    or glob.iglob("gfx/coat_of_arms/**/*.png")
    or glob.iglob("gfx/models/**/*.png")
    or glob.iglob("gfx/models/skins/skins_textures/body/Mousefolk/male/*.png")
):
    with Image(filename=png_image) as open_image:
        print(f"Converting {png_image} to .dds from .png")
        open_image.compression = "dxt5"
        path = Path(png_image)
        open_image.save(filename=path.with_suffix(".dds"))
