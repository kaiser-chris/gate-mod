# Overview

Magic Gate is a mod for Victoria 3.

THIS MOD IS UNFINISHED AND STILL IN DEVELOPMENT!

## Story

In 1814 multiple Magic Gates to the planet of Eitov opened all around Earth. 

Eitov is a magical planet with Dwarves, Elves and other races.
When the Gates opened, some spilled out conquering armies like the Orcs in Central America or the Arcturian Dominion in Africa.

While others choose to work with the powers on Earth like the Dwarves of Min Raetia who live in the Alps and choose to enter into a Personal Union with Bavaria.

## Content
Below is a list of the currently implemented content:

[//]: # (CONTENT-START)

 - 12 new Technologies
 - 3 new Countries
 - 3 new Cultures
 - 3 new Religions
 - 6 new Buildings
 - 26 new Production Methods for new and old Buildings
 - 5 new Journal Entries
 - 17 new Events
 - 1 new Pop
 - 2 new Good
 - 2 new Combat Unit Types
 - 1 new Diplomatic Action
 - 368 new Localization Keys

[//]: # (CONTENT-END)

## Art

This mod uses AI generated art from [DeviantArt DreamUp](https://www.deviantart.com/dreamup).
According to their TOS full copy right is with the generating person so publication and changes are not a problem.

This should be a temporary measure since I am not able to create proper art for the mod myself.
I would love to have other people contribute art to the mod. 

## Problems & Incompatibilities

### Incompatibilities

 - This mod overwrites/changes UI elements
   - The Tech Tree UI needed to be changed to show not researchable technologies since base Magic Knowledge is not researchable.
   - The Objective selection screen needed to be changed to properly show the new objective.
 - This mod overwrites base game Production Method Groups to extend them and might clash with other mods that also extend them:
   - pmg_street_lighting (Urban Center)
   - pmg_explosives_building_coal_mine (Coal Mine)
   - pmg_explosives_building_iron_mine (Iron Mine)
   - pmg_explosives_building_lead_mine (Lead Mine)
   - pmg_explosives_building_gold_mine (Gold Mine)
   - pmg_explosives_building_sulfur_mine (Sulfur Mine)
   - pmg_base_building_rye_farm (Rye Farm)
   - pmg_base_building_wheat_farm (Wheat Farm)
   - pmg_base_building_rice_farm (Rice Farm)
   - pmg_base_building_maize_farm (Maize Farm)
   - pmg_base_building_millet_farm (Millet Farm)

### Problems

 - In the Tech Tree UI, some of the new technologies are selectable for non-magic countries even though they are not researchable.
 - Since we can't add new war goals, 'Demand Magic Knowledge' is a Diplomatic Action instead of a war goal.
 - New Combat Unit Types are always set as default because they are defined in a new file that is loaded after all base game Combat Unit Types. This is necessary since we do not want to overwrite the base game Combat Unit Types to keep compatibility with future game updates.

# Future

## Improvements

These are improvements that are planned for the future but are not in active development.

 - Define/Create portraits/clothes for new countries
 - Add custom meshes for new buildings
 - Add 3D models for new cultures (Elves, Dwarves, etc.)

## Wishlist

Below are wishes for the future that are currently unrealistic because of engine and time limitations.

 - Add the planet of Eitov as a fully playable world to the game
   - Not as a replacement but both planets at once
   - With fog of war mechanic like EU4

# How to contribute

See [Contribution Notes](https://github.com/kaiser-chris/gate-mod/wiki/Contribution-Notes)

See [Open ToDo](./documentation/TODOS.md)