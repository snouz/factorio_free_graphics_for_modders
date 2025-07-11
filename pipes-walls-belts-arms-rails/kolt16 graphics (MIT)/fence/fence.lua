    {
    type = "wall",
    name = "fence",
    icon = "__Terrain mod__/graphics/icons/fence.png",
    flags = {"placeable-neutral", "player-creation"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 1, result = "fence"},
    max_health = 450,
    corpse = "wall-remnants",
    -- this kind of code can be used for having walls mirror the effect
    -- there can be multiple reaction items
    attack_reaction =
    {
      {
        ---- how far the mirroring works
        range = 2,
        ---- what kind of damage triggers the mirroring
        ---- if not present then anything triggers the mirroring
        damage_type = "physical",
        ---- caused damage will be multiplied by this and added to the subsequent damages
        reaction_modifier = 0.1,
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "damage",
              ---- always use at least 0.1 damage
              damage = {amount = 5, type = "laser"}
            }
          }
        },
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 20
      },
      {
        type = "explosion",
        decrease = 0,
        percent = 10
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 50
      },
	  {
        type = "acid",
        percent = 80
      },
	  {
        type = "poison",
        percent = 100
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    pictures =
    {
      single =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/post.png",
          priority = "extra-high",
          width = 154,
          height = 188,
  --        shift = {0.1, 0.1}
          shift = {0.5, 0.0}
        }
      },
      straight_vertical =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/straight v.png",
          priority = "extra-high",
          width = 154,
          height = 100,
   --       shift = {0.296875, 0}
          shift = {0.5, 0.40}
        }
      },
      straight_vertical_under_ending =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/straight v ext.png",
		  --filename = "__Terrain mod__/graphics/entity/fence/empty.png",
          priority = "extra-high",
          width = 154,
          height = 188,
    --      shift = {0.296875, 0}
          shift = {0.5, 0.02}
        }
      },
      straight_horizontal =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/straight h.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0, 0.078125}
          shift = {0.5, 0.0}
        }
      },
      corner_right_up =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/up-right.png",
          priority = "extra-high",
          width = 154,
          height = 188,
  --        shift = {0, 0.171875}
          shift = {0.5, 0.0}
        }
      },
      corner_right_down =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/down-right.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0, -0.15625}
          shift = {0.5, 0.0}
        }
      },
      corner_left_down =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/down-left.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0.21875, -0.15625}
          shift = {0.5, 0.0}
        }
      },
      corner_left_up =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/up-left.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0.296875, 0.03125}
          shift = {0.5, 0.0}
        }
      },
      t_up =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/down-T.png",
          priority = "extra-high",
          width = 154,
          height = 188,
  --        shift = {0, -0.1875}
          shift = {0.5, 0.0}
        }
      },
      t_down =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/up-T.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0, 0.140625}
          shift = {0.5, 0.0}
       }
      },
      t_right =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/left-T.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0.296875, -0.09375}
          shift = {0.5, 0.0}
        }
      },
      t_left =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/right-T.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0, -0.09375}
          shift = {0.5, 0.0}
        }
      },
      cross =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/cross.png",
          priority = "extra-high",
         width = 154,
          height = 188,
  --        shift = {0, -0.09375}
          shift = {0.5, 0.0}
        }
      },
      ending_up =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/down-end.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0.5, 0.234375}
          shift = {0.5, 0.0}
        }
      },
      ending_down =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/up-end.png",
          priority = "extra-high",
          width = 154,
          height = 188,
   --       shift = {0.296875, -0.0625}
          shift = {0.5, 0.0}
        }
      },
      ending_right =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/left-end.png",
          priority = "extra-high",
          width = 200,
          height = 188,
  --        shift = {0, 0.0625}
          shift = {1.25, 0.0}
        }
      },
      ending_left =
      {
        {
          filename = "__Terrain mod__/graphics/entity/fence/right-end.png",
          priority = "extra-high",
           width = 154,
          height = 188,
   --       shift = {0.1875, 0.078125}
          shift = {0.5, 0.0}
        }
      }
    }
  },

      -----------------------------------------------------
   {
    type = "item",
    name = "fence",
    icon = "__Terrain mod__/graphics/icons/fence.png",
    flags = {"goes-to-quickbar"},
    group = "combat",
    order = "h-k-a",
    place_result = "fence",
    stack_size = 32
  },
   -----------------------------------------------------------
--    {
--    type = "technology",
--    name = "reinforced-wall",
--    icon = "__base__/graphics/technology/automobilism.png",
--    effects =
--    {
--      {
--        type = "unlock-recipe",
--        recipe = "fence"
--      },
--    },
--    prerequisites = {"advanced-electronics", "automobilism"},
--    unit =
--    {
--      count = 120,
 --     ingredients =
 --     {
 --       {"science-pack-1", 2},
 --       {"science-pack-2", 1}
 --     },
 --     time = 20
 --   },
 --   order = "e-b"
 -- },
   ------------------------------------------------------
     {
    type = "recipe",
    name = "fence",
    enabled = "false",
    ingredients =
    {
      {"iron-stick", 20},
      {"steel-plate", 5}
    },
    result = "fence"
  },