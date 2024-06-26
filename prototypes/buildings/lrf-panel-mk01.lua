RECIPE {
    type = 'recipe',
    name = 'lrf-panel-mk01',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'axis-tracker', 2},
        {'mirror-mk01', 25},
        {'steel-plate', 50},
        {'duralumin', 20},
        {'quartz-tube', 10},
        {'small-parts-01', 100},
        {'utility-box-mk01', 1},
        {'electronic-circuit', 5},
    },
    results = {
        {'lrf-panel-mk01', 1}
    }
}:add_unlock('thermal-mk01')

ITEM {
    type = 'item',
    name = 'lrf-panel-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/lrf-panel-mk01.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alternativeenergy-thermosolar',
    order = 'ab',
    place_result = 'lrf-panel-mk01',
    stack_size = 50
}

local north_south = {layers = {
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-r2.png',
        width = 160,
        height = 416,
        frame_count = 1,
        shift = util.by_pixel(0, -16)
    },
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-r2-mask.png',
        width = 160,
        height = 416,
        frame_count = 1,
        tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
        shift = util.by_pixel(0, -16)
    },
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/panel-v-sh2.png',
        width = 191,
        height = 320,
        frame_count = 1,
        shift = util.by_pixel(18, 32),
        draw_as_shadow = true,
    }
}}

local east_west = {layers =
{
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-r.png',
        width = 320,
        height = 160,
        frame_count = 1,
        shift = util.by_pixel(0, -0)
    },
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-r-mask.png',
        width = 320,
        height = 160,
        frame_count = 1,
        tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
        shift = util.by_pixel(0, -0)
    },
    {
        filename = '__pyalternativeenergygraphics__/graphics/entity/lrf/panel-h-sh.png',
        width = 354,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(16, 16),
        draw_as_shadow = true,
    }
}}

local empty = {
    filename = '__core__/graphics/empty.png',
    priority = 'extra-high',
    frame_count = 1,
    width = 1,
    height = 1
}

ENTITY {
    type = 'boiler',
    name = 'lrf-panel-mk01',
    icon = '__pyalternativeenergygraphics__/graphics/icons/lrf-panel-mk01.png',
    icon_size = 64,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'lrf-panel-mk01'},
    max_health = 300,
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-2.2, -4.8}, {2.2, 4.8}},
    selection_box = {{-2.5, -5.0}, {2.5, 5.0}},
    match_animation_speed_to_activity = false,
    mode = 'heat-water-inside',
    target_temperature = 5000,
    energy_source = {type = 'void'},
    energy_consumption = '600kW',
    structure = {
        north = north_south,
        east = east_west,
        south = north_south,
        west = east_west
    },
    fire_flicker_enabled = false,
    fire = {
        north = empty,
        east = empty,
        south = empty,
        west = empty
    },
    fire_glow_flicker_enabled = false,
    fire_glow = {
        north = empty,
        east = empty,
        south = empty,
        west = empty
    },
    burning_cooldown = 0,
    fluid_box = {
        production_type = 'input-output',
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, nil, nil, nil),
        pipe_covers = py.pipe_covers(false, false, true, true),
        base_area = 10,
        pipe_connections = {
            {type = 'input-output', position = {0, -5.5}},
            {type = 'input-output', position = {0, 5.5}},
        },
        filter = 'molten-salt'
    },
    output_fluid_box = {
        pipe_connections = {},
        production_type = 'output'
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    placeable_by = {item = 'stirling-concentrator', count = 1}
}