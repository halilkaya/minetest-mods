
-- If Baked Clay mod not active, make Red and Orange nodes

if not minetest.get_modpath("bakedclay") then

	minetest.register_node(":bakedclay:red", {
		description = "Red Baked Clay",
		tiles = {"baked_clay_red.png"},
		groups = {cracky=3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(":bakedclay:orange", {
		description = "Orange Baked Clay",
		tiles = {"baked_clay_orange.png"},
		groups = {cracky=3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})

end

-- Register Mapgen Biome for Mesa

minetest.register_biome({
	name           = "mesa",
	node_top       = "bakedclay:red",
	depth_top      = 1,
	node_filler    = "bakedclay:orange",
	depth_filler   = 5,
	height_min     = 2,
	height_max     = 71,
	heat_point     = 25.0,
	humidity_point = 28.0,
})

-- Register Biome Decoration

local path = minetest.get_modpath("ethereal")

-- Redwood Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"bakedclay:red","bakedclay:orange"},
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"mesa"},
	schematic = path.."/schematics/redwood.mts",
	flags = "place_center_x, place_center_z",
})

-- Dry Shrub for filler
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"bakedclay:red"},
	sidelen = 16,
	fill_ratio = 0.015,
	biomes = {"mesa"},
	decoration = "default:dry_shrub",
})