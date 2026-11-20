# Grand Projects

*Design proposal. Nothing here is implemented yet except where a line says "existing".*

## Purpose

Grand Projects are the expensive end of the Arcanist Project system: works that tie up a country's construction sector for years and leave something permanent behind. This first set is deliberately **generic**. Every project can be started by any Arcane Country in any state that meets a few simple conditions, so the system can be introduced without writing content for individual regions. Location-specific projects (canals, named nexuses, national works) are parked in the last section and can be added once the system is in place.

All of it happens on Earth. Ankaris is never the site of a project.

## Design rules

**Magic is a supply problem.** No project produces a free, permanent bonus. Each one either consumes Mana Crystals, Mana Cores, Golems, Magic Seeds or Rune Etched Paper for as long as it runs, or it moves Mana Density in the state where it stands. A country that cannot keep the goods flowing loses the benefit.

**Victorian first, magic second.** Every project has a real 19th-century counterpart. Magic makes it cheaper, earlier, larger or possible in a worse location. It does not make the impossible possible.

**Hard to build, worth building.** The abandoned Artificial Ecosystem draft carried the note that a massive project should have a massive boost. The answer proposed here is to make rewards large but conditional on upkeep, so that the size of the reward is safe to hand out.

## How it fits the existing system

The mod already has what is needed for the build phase:

- The journal group `je_group_gate_grand_projects`.
- The infrastructure project type: a monthly cost through `modifier_gate_project_cost`, a 50% construction sector throughput penalty through `modifier_gate_project_infrastructure_cost`, and a construction target (`gate_project_construction_cost_huge`, currently very high cost × 30).
- Pause, continue and stop buttons, and the rule that the Arcanist leads one project at a time.
- A tick event pool (`on_gate_project_tick_events`), which currently holds only the Magical Experiment event.

Proposed additions:

1. **State targeting.** Most projects below are built in one state. The building selector used by Improve Mana Extraction and Modernize Seed Selection could be reused with a state list instead of a building list.
2. **Two cost tiers.** *Major* uses the existing huge cost. *Grand* would be roughly double, reserved for the handful of projects with country-wide effects.
3. **A lasting result.** On completion a project leaves one of two things:
   - a **unique building** in the state whose production method consumes magic goods and carries the reward as state or country modifiers, or
   - a **state trait or state modifier**, for projects whose cost is a Mana Density change rather than goods.
   How a goods shortage scales down `workforce_scaled` state and country modifiers on such a building needs testing before relying on it.
4. **One per state.** A state can hold one Grand Project result. This keeps the choice meaningful and limits stacking.
5. **Its own event pool.** Grand Projects should draw tick events from a separate list (accidents, cost overruns, labour disputes, a discovery on site) rather than only the research experiment.

Artificial Ecosystem: the existing journal entry can serve as the scaffold for the first project implemented and then be removed. The Living Irrigation Scheme and the State Grove below cover the ground it was meant to cover.

## Suggested first batch

Five projects that need the least new content and show the range of the system:

- Grand Condensery (extraction, raises density)
- Grounding Spires (lowers density)
- Living Irrigation Scheme (agriculture, goods upkeep)
- Great Purification Works (city, goods upkeep)
- Arcane Trunk Line (infrastructure, goods upkeep)

## The projects

Each entry gives the historical basis, where it can be built, what it needs, what it gives, and the catch.

### Mana supply

#### 1. Grand Condensery
*Basis: the great municipal gasworks, such as Beckton in London.*
- **Where:** any state with Mana Extractors.
- **Needs:** Mana Stabilization. Major tier.
- **Gives:** a higher Mana Extractor level cap in the state and better extraction throughput.
- **Catch:** raises Mana Density in the state every year it operates.

#### 2. Crystallizing Air Works
*Basis: industrial ventilation and smoke abatement in mill towns.*
- **Where:** a state with the Crystallizing Air trait.
- **Needs:** Efficient Mana Collection. Major tier.
- **Gives:** keeps the trait's extraction bonus and removes its mortality penalty.
- **Catch:** staffed by Mages; the penalty returns if the works is understaffed.

#### 3. Ley Regulator
*Basis: Victorian reservoir dams, such as Lake Vyrnwy.*
- **Where:** a state with a Mana Well.
- **Needs:** Ley Line Tapping. Grand tier.
- **Gives:** removes Mana Well instability and accidents in the state, and allows more Mana Well levels.
- **Catch:** consumes Mana Cores. If it fails, the suppressed instability returns at once.

#### 4. Mana Mains
*Basis: the London Hydraulic Power Company and city gas mains.*
- **Where:** a state with a Mana Well or a Grand Condensery.
- **Needs:** Arcane Infrastructure, Mana Cores. Major tier.
- **Gives:** lower Mana Crystal input for all buildings in the state.
- **Catch:** consumes Mana Cores as upkeep, so it only pays off in a heavily magical industrial state.

#### 5. National Crystal Reserve
*Basis: the Bank of England's bullion reserve.*
- **Where:** capital state.
- **Needs:** Soulbound Currency. Major tier.
- **Gives:** better credit and a buffer against Mana Crystal shortage penalties.
- **Catch:** takes a large one-time delivery of Mana Crystals on completion, enough to move the market price.

### Mana Density

#### 6. Grounding Spires
*Basis: lightning conductors and the great civic protective works of the era.*
- **Where:** any state.
- **Needs:** Mana Stabilization. Major tier.
- **Gives:** caps Mana Density in the state below the level where Mana Storms and Monster Hordes occur.
- **Catch:** no Mana Wells and no dungeons can appear in the state while the spires stand.

#### 7. Resonance Spire
*Basis: none directly; it is the Grounding Spires design reversed.*
- **Where:** any state below maximum Mana Density.
- **Needs:** Ritual Magic. Grand tier.
- **Gives:** steadily raises Mana Density to maximum, opening the state to Mana Wells and dungeons.
- **Catch:** consumes Mana Crystals to prime, and the state suffers every phenomenon on the way up. It is the costly, bloodless alternative to the Sacrifice Slaves ritual.

#### 8. Warden Line
*Basis: the Great Hedge of India and Australia's rabbit-proof fence.*
- **Where:** a state with medium or higher Mana Density.
- **Needs:** Monster Compendium. Major tier.
- **Gives:** far fewer Monster Attacks in the state and weaker Monster Hordes.
- **Catch:** needs a standing garrison; it could require barracks levels in the state.

### Transport and communication

#### 9. Golem-Built Harbour
*Basis: the great dock and breakwater works, such as Liverpool's docks and the Cherbourg breakwater.*
- **Where:** any coastal state.
- **Needs:** Magic Golems. Major tier.
- **Gives:** more port capacity and trade throughput in the state.
- **Catch:** consumes Golems during construction and for dredging afterwards.

#### 10. Arcane Trunk Line
*Basis: the main-line railway booms and their great termini.*
- **Where:** a state with Railways using a mana trains production method.
- **Needs:** Mana Cores. Major tier.
- **Gives:** a large infrastructure bonus and better market access for the state.
- **Catch:** consumes Mana Cores and Mana Crystals; the bonus is lost on shortage.

#### 11. Mountain Bore
*Basis: the Mont Cenis and Gotthard tunnels.*
- **Where:** a state with mountains (the same condition the Murk Ways use).
- **Needs:** Magic Golems, Rune Carving. Major tier.
- **Gives:** infrastructure and construction speed in the state, similar to the Dwarven Tunnels trait.
- **Catch:** the most accident-prone project in the list; a natural home for tick events.

#### 12. Ethereal Exchange
*Basis: the Central Telegraph Office and the first national telegraph networks.*
- **Where:** capital state.
- **Needs:** Ethereal Messaging. Grand tier.
- **Gives:** country-wide administrative reach, such as tax capacity or bureaucracy.
- **Catch:** consumes Rune Etched Paper continuously.

### Land

#### 13. Living Irrigation Scheme
*Basis: the Ganges Canal and the drainage of the Fens.*
- **Where:** any state with agriculture.
- **Needs:** Living Irrigation. Major tier.
- **Gives:** more arable land and better farm throughput in the state.
- **Catch:** consumes Magic Seeds and employs Druids. Unavailable or weaker without them.

#### 14. Weatherworks
*Basis: 19th-century rainmaking attempts and the first national weather services.*
- **Where:** any state.
- **Needs:** Ritual Magic. Major tier.
- **Gives:** fewer and milder bad harvest conditions (drought, flood, frost) in the state.
- **Catch:** consumes Mana Crystals and makes Mana Storms more likely.

#### 15. State Grove
*Basis: German scientific forestry and the first national parks.*
- **Where:** a state with a Druid Grove or logging camps.
- **Needs:** Regenerative Timber. Major tier.
- **Gives:** logging throughput and much lower pollution in the state.
- **Catch:** removes a share of arable land from other use. It would fit as a project favoured under Druidic Agrarianism.

### Cities and industry

#### 16. Great Purification Works
*Basis: Bazalgette's London sewers.*
- **Where:** a state with a large urban population.
- **Needs:** Arcane Infrastructure. Major tier.
- **Gives:** lower mortality and pollution and a higher standard of living in the state.
- **Catch:** consumes Mana Crystals for the purification wards.

#### 17. Metropolitan Renewal
*Basis: Haussmann's rebuilding of Paris.*
- **Where:** capital state, or any state with a large urban population.
- **Needs:** Arcane Infrastructure, Mana Lanterns. Grand tier.
- **Gives:** infrastructure, urban building throughput and fewer radicals from low living standards.
- **Catch:** consumes Mana Crystals. Clearing old districts could create radicals at the start.

#### 18. Arcane Foundry Combine
*Basis: the Krupp works at Essen and the Bessemer steel towns.*
- **Where:** a state with Steel Mills.
- **Needs:** Arcane Foundries. Major tier.
- **Gives:** heavy industry throughput in the state.
- **Catch:** consumes Mana Cores and raises Mana Density.

#### 19. Grand Golem Arsenal
*Basis: the Armstrong works at Elswick and the Royal Arsenal at Woolwich.*
- **Where:** a state with a Golem Workshop.
- **Needs:** Magic Golems, Mana Weaponization. Major tier.
- **Gives:** Golem Workshop throughput and a source of the War Golems prestige good.
- **Catch:** consumes Mana Cores at a rate that competes with civilian industry.

#### 20. Imperial Rune Printery
*Basis: the steam-press printing houses and government printing offices.*
- **Where:** a state with Paper Mills.
- **Needs:** Mechanized Rune-Etching. Major tier.
- **Gives:** Rune Etched Paper throughput and cheaper government administration.
- **Catch:** employs Mages in large numbers, drawing them from other work.

### Knowledge, health and state

#### 21. Great Scrying Observatory
*Basis: the Royal Observatory at Greenwich and Pulkovo Observatory.*
- **Where:** any state; best at high Mana Density.
- **Needs:** Scrying Rituals. Grand tier.
- **Gives:** Magic Innovation and a military or diplomatic intelligence bonus.
- **Catch:** consumes Mana Crystals. A good source of events that hint at Ankaris without showing it.

#### 22. Collegium Arcanum
*Basis: the founding of the great research universities.*
- **Where:** a state with a Magic Academy.
- **Needs:** Formalized Magic, Mana-Linked Education. Major tier.
- **Gives:** faster qualification of Mages and more Magic Innovation from academies.
- **Catch:** strengthens the Arcane Touched interest group.

#### 23. Grand Sanatorium
*Basis: the pavilion hospitals built after Florence Nightingale's reforms.*
- **Where:** any state.
- **Needs:** Healing Circles. Major tier.
- **Gives:** lower mortality in the state and faster recovery of military casualties.
- **Catch:** consumes Mana Crystals and employs Mages.

#### 24. Exhibition of Two Worlds
*Basis: the Great Exhibition of 1851 and its Crystal Palace.*
- **Where:** capital state.
- **Needs:** Magic & Science. Grand tier.
- **Gives:** a one-time burst of prestige, technology spread and Magic Innovation.
- **Catch:** a single payoff with no lasting building; takes a large delivery of Mana Crystals for the hall itself.

### Defence

#### 25. Ward-Line
*Basis: the Séré de Rivières fortress belt in France.*
- **Where:** a border state.
- **Needs:** Battlefield Wards. Grand tier.
- **Gives:** a strong defensive bonus in the state.
- **Catch:** consumes Mana Crystals, and far more while the state is under attack, so a long siege drains the national supply.

#### 26. Gate Citadel
*Basis: the fortified naval bases and customs ports of the era.*
- **Where:** a state with a Magic Gate. Not fully generic, but one template covers every Gate.
- **Needs:** an investigated Gate. Grand tier.
- **Gives:** defence for the state and higher throughput for the Gate's migration and trade production methods.
- **Catch:** other Arcane Countries could see a fortified Gate as a provocation.

## Notes and open threads

- **Tier costs.** Whether Grand should be double the existing huge cost or something else needs playtesting against mid-game construction capacity.
- **AI.** The AI will need weights for which project to pick and where. A simple rule would be to prefer the project whose upkeep goods it already produces in surplus.
- **Density numbers.** Projects 1, 6, 7, 14 and 18 change Mana Density. Their yearly values should be set against the existing sources in the Mana Saturation journal entry.
- **Law and interest group hooks.** Several projects fit particular laws (State Grove with Druidic Agrarianism, Warden Line with the monster hunting laws). Approval effects from the Arcane Touched could be added later.
- **Project count per country.** One Arcanist means one project at a time. A late technology could allow a second concurrent Grand Project.
- **Stopping a finished project.** Decide whether a completed work can be demolished, and whether demolition refunds anything.

## Later: location-specific projects

Ideas held back for after the generic system works:

- **Canals and passages:** Golem-Dug Suez, Panama Canal under Healing Circles, Kra Canal, Channel Tunnel, the Frost Passage (Northwest Passage).
- **National works:** Raetian Murk Trunk (Min Raetia), Cape-to-Cairo Mana Railway, an Arcane Council Palace at the existing headquarters.
- **Ley line nexuses:** a Nexus Sanctum template for the twelve named sites, the Ateshgah Crucible, the Ganges Healing Works, a Great Ley Survey to find dormant nexuses early.
- **Land:** the Sahara Sea, Uluru Oasis, Living Dikes on the Zuiderzee, a Monsoon Regulator for India.
