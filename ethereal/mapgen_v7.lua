ethereal = {}

--= Define Biomes

minetest.register_biome({
	name           = "alpine",
	node_top       = "default:dirt_with_snow", 
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	height_min     = 40,
	height_max     = 90,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "healing",
	node_top       = "default:dirt_with_snow",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 75,
	height_max     = 140,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "snowy",
	node_top       = "ethereal:cold_dirt", 
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	height_min     = 5,
	height_max     = 40,
	heat_point     = 11.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "frost",
	node_top       = "ethereal:crystal_topped_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "grassy",
	node_top       = "ethereal:green_dirt_top", 
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 91,
	heat_point     = 13.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "caves",
	node_top       = "default:desert_stone",
	depth_top      = 2,
	node_filler    = "air",
	depth_filler   = 8,
	height_min     = 4,
	height_max     = 41,
	heat_point     = 15.0,
	humidity_point = 25.0,
})

minetest.register_biome({
	name           = "grayness",
	node_top       = "ethereal:gray_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 5,
	height_min     = 1,
	height_max     = 41,
	heat_point     = 15.0,
	humidity_point = 30.0,
})

minetest.register_biome({
	name           = "grassytwo",
	node_top       = "ethereal:green_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 91,
	heat_point     = 15.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "prairie",
	node_top       = "ethereal:prairie_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 3,
	height_max     = 26,
	heat_point     = 20.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "jumble",
	node_top       = "ethereal:green_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 25.0,
	humidity_point = 50.0,
})

minetest.register_biome({
	name           = "junglee",
	node_top       = "ethereal:jungle_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 30.0,
	humidity_point = 60.0,
})

minetest.register_biome({
	name           = "desert",
	node_top       = "default:desert_sand",
	depth_top      = 5,
	node_filler    = "default:desert_stone",
	depth_filler   = 70,
	height_min     = 3,
	height_max     = 23,
	heat_point     = 35.0,
	humidity_point = 20.0,
})

minetest.register_biome({
	name           = "grove",
	node_top       = "ethereal:grove_dirt",
	depth_top      = 7,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 3,
	height_max     = 23,
	heat_point     = 40.0,
	humidity_point = 60.0,
})

minetest.register_biome({
	name           = "mushroom",
	node_top       = "ethereal:mushroom_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 50,
	heat_point     = 45.0,
	humidity_point = 65.0,
})

minetest.register_biome({
	name           = "desertstone",
	node_top       = "default:sandstone",
	depth_top      = 7,
	node_filler    = "default:desert_stone",
	depth_filler   = 70,
	height_min     = 3,
	height_max     = 23,
	heat_point     = 50.0,
	humidity_point = 20.0,
})

minetest.register_biome({
        name = "lake",
        node_top = "default:sand",
        depth_top = 1,
        node_filler = "default:gravel",
        depth_filler = 1,
        node_water = "default:water_source",
        node_dust_water= "default:water_source",
        height_min = -31000,
        height_max = 3,
        heat_point = 50,
        humidity_point = 40,
})

minetest.register_biome({
	name           = "plains",
	node_top       = "ethereal:dry_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 3,
	height_max     = 61,
	heat_point     = 55.0,
	humidity_point = 25.0,
})

minetest.register_biome({
	name           = "fiery",
	node_top       = "ethereal:fiery_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 5,
	height_max     = 65,
	heat_point     = 60.0,
	humidity_point = 20.0,
})

minetest.register_biome({
	name           = "fiery2",
	node_top       = "ethereal:fiery_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 5,
	height_max     = 65,
	heat_point     = 80.0,
	humidity_point = 10.0,
})

minetest.register_biome({
	name           = "sandclay",
	node_top       = "default:sand",
	depth_top      = 3,
	node_filler    = "default:clay",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 11,
	heat_point     = 65.0,
	humidity_point = 2.0,
})

--= Register Biome Decoration (Schematics)

local path = minetest.get_modpath("ethereal")

-- Banana Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:grove_dirt",
	sidelen = 16,
	fill_ratio = 0.015,
	biomes = {"grove"},
	schematic = path.."/schematics/bananatree.mts",
	flags = "place_center_x, place_center_z",
})

-- Healing Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_snow",
	sidelen = 16,
	fill_ratio = 0.04,
	biomes = {"healing"},
	schematic = path.."/schematics/yellowtree.mts",
	flags = "place_center_x, place_center_z",
})

-- Frost Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:crystal_topped_dirt",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"frost"},
	schematic = path.."/schematics/frosttrees.mts",
	flags = "place_center_x, place_center_z",
})

-- Giant Shrooms
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.070,
	biomes = {"mushroom"},
	schematic = path.."/schematics/mushroomone.mts",
	flags = "place_center_x, place_center_z",
})

-- Small Lava Crater
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt_top",
	sidelen = 16,
	fill_ratio = 0.012,
	biomes = {"fiery"},
	schematic = path.."/schematics/volcanom.mts",
	flags = "place_center_x, place_center_z",
})

-- Large Lava Crater
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt_top",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"fiery2"},
	schematic = path.."/schematics/volcanol.mts",
	flags = "place_center_x, place_center_z",
--	replacements = {{"default:stone", "default:desert_stone"}},
})

-- Jungle Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:jungle_dirt",
	sidelen = 16,
	fill_ratio = 0.3, -- was 0.250
	biomes = {"junglee, jumble"},
	schematic = path.."/schematics/jungletree.mts",
	flags = "place_center_x, place_center_z",
})

-- Gr[a|e]y Tree
--minetest.register_decoration({
--	deco_type = "schematic",
--	place_on = {"ethereal:gray_dirt_top", "ethereal:green_dirt_top"},
--	sidelen = 16,
--	fill_ratio = 0.025,
--	biomes = {"grayness", "jumble"},
--	schematic = path.."/schematics/graytrees.mts",
--	flags = "place_center_x, place_center_z",
--})

-- Willow Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:gray_dirt_top",
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"grayness"},
	schematic = path.."/schematics/willow.mts",
	flags = "place_center_x, place_center_z",
})

-- Pine Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow"},
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"snowy", "alpine"},
	schematic = path.."/schematics/pinetree.mts",
	flags = "place_center_x, place_center_z",
})

-- Apple Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.030,
	biomes = {"grassy, jumble"},
	schematic = path.."/schematics/tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:prairie_dirt", "ethereal:green_dirt_top"},
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"prairie", "grassytwo"},
	schematic = path.."/schematics/tree.mts",
	flags = "place_center_x, place_center_z",
})

-- Big Old Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"grassytwo"},
	schematic = path.."/schematics/bigtree.mts",
	flags = "place_center_x, place_center_z",
})

-- Old Rail Section in Desert
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"desertsandstone"},
	schematic = path.."/schematics/rail.mts",
	flags = "place_center_x, place_center_z",
})

-- Different Old Rail Section in Desert
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"desertsandstone"},
	schematic = path.."/schematics/railtwo.mts",
	flags = "place_center_x, place_center_z",
})

-- Dead Tree
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:dry_dirt",
	sidelen = 16,
	fill_ratio = 0.006,
	biomes = {"plains"},
	decoration = "ethereal:scorched_tree",
--	height = 6,
	height_max = 6,
})

--= Smaller Plant Decoration

-- Dry Shrubs on Dry Dirt
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:dry_dirt", "default:sand", "default:desert_sand", "sandstone"},
	sidelen = 16,
	fill_ratio = 0.012,
	biomes = {"plains", "lake", "desert", "desertstone"},
	decoration = "default:dry_shrub",
})

-- Prairie Flowers
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.030,
	biomes = {"grassy", "grassy", "grassytwo"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_bush"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:prairie_dirt",
	sidelen = 16,
	fill_ratio = 0.050,
	biomes = {"prairie"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_bush"},
})

-- Crystal Spikes & Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:crystal_topped_dirt",
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"frost"},
	decoration = {"ethereal:crystal_spike", "ethereal:crystalgrass"},
})

-- Red Shrub
minetest.register_decoration({
        deco_type = "simple",
        place_on = "ethereal:fiery_dirt_top", 
        sidelen = 16,
        fill_ratio = 0.20,
        biomes = {"fiery", "fiery2"},
        decoration = "ethereal:dry_shrub",
})

-- Snowy Grass
minetest.register_decoration({
        deco_type = "simple",
        place_on = {"ethereal:gray_dirt_top", "ethereal:cold_dirt"},
        sidelen = 16,
        fill_ratio = 0.05,
        biomes = {"grayness", "snowy"},
        decoration = "ethereal:snowygrass",
})

-- Cactus
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.010, -- 0.10
	biomes = {"desertstone"},
	decoration = "default:cactus",
--	height = 3,
	height_max = 3,
})

-- Small Mushroom
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.015,
	biomes = {"mushroom"},
	decoration = "ethereal:mushroom_plant",
})

-- Jungle Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt", "ethereal:green_dirt_top"},
	sidelen = 16,
	fill_ratio = 0.18,
	biomes = {"junglee", "jumble"},
	decoration = "default:junglegrass",
})

-- Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:green_dirt_top", "ethereal:jungle_dirt", "ethereal:prairie_dirt", "ethereal:grove_dirt"},
	sidelen = 16,
	fill_ratio = 0.40, -- was 0.50
	biomes = {"grassy", "grassytwo", "jumble", "junglee", "prairie", "grove"},
	decoration = "default:grass_5",
})

-- Ferns
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:grove_dirt",
	sidelen = 16,
	fill_ratio = 0.20,
	biomes = {"grove"},
	decoration = "ethereal:fern",
})

-- Snow
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow"},
	sidelen = 16,
	fill_ratio = 0.80,
	biomes = {"snowy", "alpine"},
	decoration = "default:snow",
})

-- Wild Onions
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:green_dirt_top", "ethereal:prairie_dirt"},
	sidelen = 16,
	fill_ratio = 0.35,
	biomes = {"grassy", "grassytwo", "jumble", "prairie"},
	decoration = "ethereal:wild_onion_4",
})

--= Specific Plant Placements

-- Palm Tree on Sand next to Water
minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y >= 2 and minp.y <= 0 then
		local perlin1 = minetest.get_perlin(354, 3, 0.7, 100)
		-- Assume X and Z lengths are equal
		local divlen = 8
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)

			-- Find random positions for palm based on this random
			local pr = PseudoRandom(seed+1)
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				if minetest.get_node({x=x,y=1,z=z}).name == "default:sand" and
					minetest.find_node_near({x=x,y=1,z=z}, 1, "default:water_source") then
					schematic = path.."/schematics/palmtree.mts"
					minetest.place_schematic({x=x-3,y=2,z=z-4}, schematic, 0, '', 0)
				end
			end
		end
	end
end)