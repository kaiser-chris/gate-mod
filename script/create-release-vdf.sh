#!/bin/bash

cd ..

# Check mod directory
if [ -d "$1" ]
then
  mod_path=$(realpath "$1")
else
  printf 'Usage: ./create-release-vdf.sh MOD_DIR [MOD_ID] [VISIBILITY]'
  exit 1
fi

title=$(grep -Po '(?<=\s\"name\"\s:\s\").+(?=\",)' "$mod_path/.metadata/metadata.json")
version=$(grep -Po '(?<=\s\"version\"\s:\s\").+(?=\",)' "$mod_path/.metadata/metadata.json")
description="$(cat < "$mod_path/../documentation/STEAM_PAGE.bbcode")"

if [ -f "$mod_path/../documentation/updates/$version.bbcode" ]
then
  release_notes="$(cat < "$mod_path/../documentation/updates/$version.bbcode")"
else
  release_notes=''
fi

# Read mod id
if [ -n "$2" ]
then
  mod_id="$2"
else
  mod_id='0'
fi

# Read visibility
if [ -n "$3" ]
then
  visibility="$3"
else
  visibility='2'
fi

# Clean up old file
printf '' > workshop.vdf

printf '"workshopitem"' >> workshop.vdf
printf '\n' >> workshop.vdf
printf '{' >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"appid" "529340"' >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"publishedfileid" "%s"' "$mod_id" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"contentfolder" "%s"' "$mod_path" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"previewfile" "%s/thumbnail.png"' "$mod_path" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"visibility" "%s"' "$visibility" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"title" "%s"' "$title" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"description" "%s"' "$description" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '"changenote" "%s"' "$release_notes" >> workshop.vdf
printf '\n' >> workshop.vdf
printf '}' >> workshop.vdf