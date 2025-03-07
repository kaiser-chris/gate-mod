# Compatible Resources a Guide

## Defining our Building Groups
```
bg_dwarven_mining = {
    parent_group = bg_mining
    capped_by_resources = yes
    always_possible = yes
    can_use_slaves = yes
}

bg_dwarven_gold_mining = {
    parent_group = bg_dwarven_mining
    default_building = building_dwarven_gold_mine
}

bg_dwarven_coal_mining = {
    parent_group = bg_dwarven_mining
    default_building = building_dwarven_coal_mine
}
```

## Defining our Buildings
```
building_dwarven_gold_mine = {
    building_group = bg_dwarven_gold_mining
    icon = "gfx/interface/icons/building_icons/gold_mine.dds"
    city_type = mine
    levels_per_mesh = 5
    required_construction = construction_cost_medium
    terrain_manipulator = mining
    has_max_level = yes

    possible = {
        modifier:state_building_dwarven_gold_mine_max_level_add > 0
    }

    potential = {
        modifier:state_building_dwarven_gold_mine_max_level_add > 0
    }

    unlocking_technologies = {
        magic_dwarf_murk
        prospecting
    }

    ai_value = 5000 # Gold mines are very nice for minting revenue and guaranteed profits
    ai_nationalization_desire = 1.0 # AI should be keen on nationalizing these

    production_method_groups = {
        pmg_mining_equipment_building_gold_mine
        pmg_explosives_building_gold_mine
        pmg_steam_automation_building_gold_mine
        pmg_train_automation_building_gold_mine
    }
    ownership_type = self

    background = "gfx/interface/icons/building_icons/backgrounds/building_panel_bg_mining.dds"
}
```

## Defining Dynamic Modifiers
```
state_building_dwarven_lead_mine_max_level_add = {
    decimals = 0
    color = good
    percent = no
}

state_building_dwarven_sulfur_mine_max_level_add = {
    decimals = 0
    color = good
    percent = no
}

state_building_dwarven_gold_mine_max_level_add = {
    decimals = 0
    color = good
    percent = no
}
```

## Defining State Traits
Create state traits for every relevant state region like this:
```
state_trait_dwarven_mines_tyrol = {
	icon = "gfx/interface/icons/state_trait_icons/tunnel.dds"

	modifier = {
		state_building_dwarven_coal_mine_max_level_add = 70
		state_building_dwarven_gold_mine_max_level_add = 8
	}
}

state_trait_dwarven_mines_south_tyrol = {
	icon = "gfx/interface/icons/state_trait_icons/tunnel.dds"

	modifier = {
		state_building_dwarven_coal_mine_max_level_add = 32
		state_building_dwarven_iron_mine_max_level_add = 20
		state_building_dwarven_lead_mine_max_level_add = 15
		state_building_dwarven_sulfur_mine_max_level_add = 15
	}
}
```

## Adding State Traits
`common/history/states`

Create a new file:
```
s:STATE_TYROL = {
    add_state_trait = state_trait_dwarven_mines_tyrol
}
s:STATE_SOUTH_TYROL = {
    add_state_trait = state_trait_dwarven_mines_south_tyrol
}
```