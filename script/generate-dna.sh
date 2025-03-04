#!/bin/bash

inject_dna=$(cat < dna_injection.txt | tr -s '\n' ' ')

cd ..

rm ./mod/common/dna_data/00_dna.txt

find ./mod/common/dna_data/ -name "*.txt" -type f -print0 | while read -d $'\0' filename
do
  # Add missing genes
  sed -i "s/teeth_accessory.*\=.*\"normal_teeth\".*\"normal_teeth\".*/teeth_accessory={ \"normal_teeth\" 0 \"normal_teeth\" 0 }\n$inject_dna/g" "$filename"

  # Fixing character skin color
  # New color palette only has half the space for normal skin colors
  first=$(grep -oP 'skin_color.*=.*{\s+\d+\s+\K(\d*)' ./mod/common/dna_data/00_andres_de_santa_cruz.txt)
  second=$(grep -oP 'skin_color.*=.*{\s+\d+\s+\d+\s+\d+\s+\K(\d*)' ./mod/common/dna_data/00_andres_de_santa_cruz.txt)
  first_fixed=$((first / 2))
  second_fixed=$((second / 2))
  sed -Ei "s/.*skin_color.*=.*\{\s([0-9]+)\s([0-9]+)\s([0-9]+)\s([0-9]+)\s\}/skin_color={ \1 $first_fixed \3 $second_fixed }/g" "$filename"
done