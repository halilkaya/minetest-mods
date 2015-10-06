
--= Re-register Papyrus (dug papyrus makes any above fall)

minetest.register_node(":default:papyrus", {
	description = "Papyrus",
	drawtype = "plantlike",
	tiles = {"default_papyrus.png"},
	inventory_image = "default_papyrus.png",
	wield_image = "default_papyrus.png",
	paramtype = "light",
	walkable = true,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

--= Place Papyrus on Dirt next to Water

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:green_dirt_top", "ethereal:jungle_dirt"},
	sidelen = 16,
	fill_ratio = 0.1, -- 0.055
	biomes = {"grassy", "grassytwo", "junglee", "jumble"},
	decoration = "default:papyrus",
--	height = 4,
	height_max = 4,
	spawn_by = "default:water_source",
	num_spawn_by = 1,
})

--= Have existing Papyrus grow up to 4 high

minetest.register_abm({
	nodenames = {"default:papyrus"},
	interval = 50,
	chance = 20,
	action = function(pos, node)
		pos.y = pos.y-1
		local name = minetest.get_node(pos).name
		if name == "default:dirt" or name == "ethereal:green_dirt_top" or name == "ethereal:jungle_dirt" then
			if minetest.find_node_near(pos, 3, {"group:water"}) == nil then
				return
			end
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "default:papyrus" and height < 4 do
				height = height+1
				pos.y = pos.y+1
			end
			if height < 4 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="default:papyrus"})
				end
			end
		end
	end,
})