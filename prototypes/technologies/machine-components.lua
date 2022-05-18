TECHNOLOGY {
    type = "technology",
    name = "machine-components-mk01",
    icon = "__pycoalprocessinggraphics__/graphics/technology/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machine-components-mk02',
    icon = '__pycoalprocessinggraphics__/graphics/technology/missing_icon.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {},
    dependencies = {"machine-components-mk01"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machine-components-mk03',
    icon = '__pycoalprocessinggraphics__/graphics/technology/missing_icon.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {},
    dependencies = {"machine-components-mk02"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machine-components-mk04',
    icon = '__pycoalprocessinggraphics__/graphics/technology/missing_icon.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {},
    dependencies = {"machine-components-mk03"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'military-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}
