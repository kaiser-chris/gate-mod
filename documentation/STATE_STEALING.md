# State Stealing a Guide

The examples below are for new countries but this also works for existing countries.
This guide only mentions relevant history files.
All other history files work normally and do not need anything special.

**None of these files should overwrite base game files.**

## Defining our State
`common/history/states`

The first thing we do is create a new file.

In this file we add all **except** one province **per country** that owns the state.
This creates a new split state that is totally empty, and it does not annex the existing state.

Here is an example where I gave Guatemala to GATE_OK:
```
s:STATE_GUATEMALA = {
    create_state = {
        country = c:GATE_OK
        owned_provinces = {
            x02073E x7D333F x464F6A x0F5049
            xBD8628 xA9090A x78C465 xD9BEFE
            xD030C0 x42124E xB2E11E x50B040
            x2D4EB6 x5449D0 x6D71DA x702CD9
            x65C19A x30E01C x50B0C0 xC67219
            xD176F3 xFA4B41 x011E0F
        }
    }
}
```

## Adding Pops
`common/history/pops`

When adding pops we need to remove existing ones from the original state owner,
so when we later annex it properly we do not get their population.
The removal and recreation leads to proper integration of pop workplaces.

**NOTE:** This needs to be done even if you plan to keep the same pops.
In that case you will need to copy the pops from the base game.

In this example we kill the whole population of Guatemala first and then add our own.
We need to do it for UCA and GBR since it is a split state:
```
s:STATE_GUATEMALA = {
    region_state:UCA = {
        kill_population_percent_in_state = {
            percent = 1 # 100%
        }
    }
    region_state:GBR = {
        kill_population_percent_in_state = {
            percent = 1 # 100%
        }
    }
    region_state:GATE_OK = {
        create_pop = {
            culture = orcish
            size = 200000
        }
        create_pop = {
            pop_type = slaves
            culture = central_american
            size = 164404
        }
        create_pop = {
            pop_type = slaves
            culture = mayan
            size = 312000
        }
    }
}
```

## Adding Buildings
`common/history/buildings`

When adding buildings we need to remove existing ones from the original state owner,
so when we later annex it properly we do not get their buildings without workforces.
The removal and recreation leads to proper integration of pop workplaces.
To find which buildings to remove see the base game history files.

**NOTE:** This needs to be done even if you plan to keep the same buildings.
In that case you will need to copy the buildings from the base game.

In this example we remove all buildings of Guatemala first and then add our own.
We need to do it for UCA and GBR since it is a split state:
```
s:STATE_GUATEMALA = {
    region_state:UCA = {
        # Clean up base game buildings
        remove_building = building_government_administration
        remove_building = building_maize_farm
        remove_building = building_livestock_ranch
        remove_building = building_barrack
    }
    region_state:GBR = {
        # Clean up base game buildings
        remove_building = building_port
    }
    region_state:GATE_OK = {
        create_building = {
            building = "building_port"
            add_ownership = {
                country = {
                    country = "c:GATE_OK"
                    levels = 2
                }
            }
            reserves = 1
            activate_production_methods = { "pm_anchorage" }
        }
        # More buildings could be here
    }
}
```

## Annexing the State properly
`common/history/global`

Finally, we need to annex the now empty states by _stealing_ the last provinces.

This is an example where we steal the last two provinces (GBR and UCA) for Guatemala:
```
s:STATE_GUATEMALA = {
    set_owner_of_provinces = {
        country = c:GATE_OK
        provinces = {
            xDEC8D3
            xD0B040
        }
    }
}
```