
--= Landscape Functions

-- Over time Cobble placed in water changes to Mossy Cobble
minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors={"default:water_source"},
	interval = 30,
	chance = 10,
	action = function(pos, node)
	        minetest.add_node(pos, {name="default:mossycobble"})
	end
})

-- If Crystal Spike, Crystal Dirt or Snow near Water, change Water to Ice
minetest.register_abm({
	nodenames = {"ethereal:crystal_spike", "ethereal:crystal_topped_dirt", "default:snow", "default:snowblock"},
	neighbors = {"default:water_source"},
	interval = 15,
	chance = 2,
	action = function(pos, node)
		local pos0 = {x=pos.x-1,y=pos.y-1,z=pos.z-1}
		local pos1 = {x=pos.x+1,y=pos.y+1,z=pos.z+1}

		local water = minetest.env:find_nodes_in_area(pos0, pos1, "default:water_source")
		if water then
			minetest.env:set_node(water[1], {name="default:ice"})
		end
	end,
})

-- If Heat Source near Ice, melt into Water Source
minetest.register_abm({
	nodenames = {"default:ice"},
	neighbors = {"default:lava_source", "default:lava_flowing", "default:torch", "default:furnace_active"},
	interval = 10,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.add_node(pos,{name="default:water_source"})
		nodeupdate(pos)
	end,
})

-- If Water Source near Dry Dirt, change to normal Dirt
minetest.register_abm({
	nodenames = {"ethereal:dry_dirt"},
	neighbors = {"group:water"},
	interval = 15,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.add_node(pos,{name="default:dirt"})
	end,
})