--= Register Crystal Items

-- Crystal Spike (Hurts if you touch it - thanks to ZonerDarkRevention for his DokuCraft DeviantArt crystal texture)
minetest.register_node("ethereal:crystal_spike", {
	description = "Crystal Spike",
	drawtype = "plantlike",
	tiles = { "crystal_spike.png" },
	inventory_image = "crystal_spike.png",
	wield_image = "crystal_spike.png",
	paramtype = "light",
	light_source = LIGHT_MAX - 7,
	walkable = false,
	damage_per_second = 1,
	groups = {cracky=1,falling_node=1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

-- Crystal Ingot and Recipe
minetest.register_craftitem("ethereal:crystal_ingot", {
	description = "Crystal Ingot",
	inventory_image = "crystal_ingot.png",
})

minetest.register_craft({
	output = 'ethereal:crystal_ingot',
	recipe = {
		{'default:mese_crystal', 'ethereal:crystal_spike', ''},
		{'', '', ''},
		{'', '', ''},
	}
})

-- Crystal Sword and Recipe (Powerful wee beastie)
minetest.register_tool("ethereal:sword_crystal", {
	description = "Crystal Sword",
	inventory_image = "crystal_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.70, [2]=0.70, [3]=0.25}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	}
})

minetest.register_craft({
	output = 'ethereal:sword_crystal',
	recipe = {
		{'', 'ethereal:crystal_ingot', ''},
		{'', 'ethereal:crystal_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

-- Crystal Pick and Recipe (This will last a while)
minetest.register_tool("ethereal:pick_crystal", {
	description = "Crystal Pickaxe",
	inventory_image = "crystal_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.8, [2]=0.8, [3]=0.40}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_craft({
	output = 'ethereal:pick_crystal',
	recipe = {
		{'ethereal:crystal_ingot', 'ethereal:crystal_ingot', 'ethereal:crystal_ingot'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

-- Crystal Shovel (with Soft Touch, can dig up dirt with grass intact)
minetest.register_tool("ethereal:shovel_crystal", {
	description = "Crystal (soft touch) Shovel",
	inventory_image = "crystal_shovel.png",
	wield_image = "crystal_shovel.png^[transformR90",

	on_use = function(itemstack, user, pointed_thing)

		if pointed_thing.type == "node" then

		-- Check if node protected
		if not minetest.is_protected(pointed_thing.under, user:get_player_name()) then

			local pos = pointed_thing.under
			local nn = minetest.get_node(pos).name
			local is_crumbly = minetest.get_item_group(nn, "crumbly")

			-- Is node dirt, sand or gravel
			if is_crumbly == 1 or is_crumbly == 2 or is_crumbly == 3 then

				local inv = user:get_inventory()

				minetest.env:remove_node(pointed_thing.under)
				nodeupdate(pos)
				
				inv:add_item("main", {name = nn})
				itemstack:add_wear(65535/100) -- 111 uses
				minetest.sound_play("default_dirt_footstep", {pos = pos, gain = 0.35})
				return itemstack
			end

		end
		end

	end,
})

minetest.register_craft({
	output = 'ethereal:shovel_crystal',
	recipe = {
		{'', 'ethereal:crystal_ingot', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

-- Crystal Gilly Staff and Recipe (When used it replenishes your air supply while underwater)

minetest.register_tool("ethereal:crystal_gilly_staff", {
	description = "Crystal Gilly Staff",
	inventory_image = "crystal_gilly_staff.png",
	wield_image = "crystal_gilly_staff.png",

	on_use = function(itemstack, user, pointed_thing)

		if user:get_breath() < 10 then
			user:set_breath(10)
		end

	end,
})

minetest.register_craft({
	output = 'ethereal:crystal_gilly_staff',
	recipe = {
		{'ethereal:green_moss', 'ethereal:gray_moss', 'ethereal:fiery_moss'},
		{'ethereal:crystal_moss', 'ethereal:crystal_ingot', 'ethereal:mushroom_moss'},
		{'', 'ethereal:crystal_ingot', ''},
	}
})