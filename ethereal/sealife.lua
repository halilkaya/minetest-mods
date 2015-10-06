
-- Seaweed
minetest.register_node("ethereal:seaweed", {
	description = "Seaweed",
	drawtype = "plantlike",
	tiles = {"seaweed.png"},
	inventory_image = "seaweed.png",
	wield_image = "seaweed.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {type = "fixed", fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}},
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {snappy=3},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
       type = "shapeless",
       output = "dye:dark_green 3",
       recipe = {"ethereal:seaweed",},
})

-- Blue Coral
minetest.register_node("ethereal:coral2", {
	description = "Blue Coral",
	drawtype = "plantlike",
	tiles = {"coral2.png"},
	inventory_image = "coral2.png",
	is_ground_content = true,
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
       type = "shapeless",
       output = "dye:cyan 3",
       recipe = {"ethereal:coral2",},
})

-- Orange Coral
minetest.register_node("ethereal:coral3", {
	description = "Orange Coral",
	drawtype = "plantlike",
	tiles = {"coral3.png"},
	inventory_image = "coral3.png",
	is_ground_content = true,
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
       type = "shapeless",
       output = "dye:orange 3",
       recipe = {"ethereal:coral3",},
})

-- Pink Coral
minetest.register_node("ethereal:coral4", {
	description = "Pink Coral",
	drawtype = "plantlike",
	tiles = {"coral4.png"},
	inventory_image = "coral4.png",
	is_ground_content = true,
	selection_box = {type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}},
	light_source = 3,
	groups = {snappy=3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
       type = "shapeless",
       output = "dye:pink 3",
       recipe = {"ethereal:coral4",},
})

-- Undersea Sand
minetest.register_node("ethereal:sandy", {
	description = "Sandy",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {crumbly=3, falling_node=1, sand=1, soil=1, not_in_creative_inventory=1},
	drop = 'default:sand',
	sounds = default.node_sound_sand_defaults(),
})

-- Register Undersea Sand
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ethereal:sandy",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	height_max     = -14,
	height_min     = -100,
})

-- Generate Undersea Sand
local function generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, chunk_size, ore_per_chunk, height_min, height_max)
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	if chunk_size >= y_max - y_min + 1 then
		return
	end
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	for i=1,num_chunks do
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= height_min and y0 <= height_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.get_node(p2).name == wherein then
						minetest.set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
end

--= Randomly generate Coral or Seaweed and have Seaweed grow up to 10 high

minetest.register_abm({
	nodenames = {"ethereal:sandy"},
	interval = 15,
	chance = 10,

	action = function(pos, node)

		if minetest.find_node_near(pos, 1, {"group:water"}) == nil then
			return
		end

		sel = math.random(1,4)
		if sel == 1 or minetest.get_node(pos).name == "ethereal:seaweed" then

			local height = 0

			while minetest.get_node(pos).name == "ethereal:seaweed"
			or minetest.get_node(pos).name == "ethereal:sandy"
			and height < 10 do
				height = height+1
				pos.y = pos.y+1
			end

			if height < 10 then
				if minetest.get_node(pos).name == "default:water_source" then
					minetest.set_node(pos, {name="ethereal:seaweed"})
--					print ("GOING UP")
				end
			end

		else

			pos.y = pos.y + 1
			if minetest.get_node(pos).name == "default:water_source" then

				minetest.set_node(pos, {name="ethereal:coral"..sel})
--				print ("CORAL ", sel)

			end

		end
	end,
})