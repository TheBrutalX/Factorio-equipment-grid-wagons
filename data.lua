function add_equipment_grid_to_game ()
  -- Define the Equipment Grid
  local wagon_grid = {
    type = "equipment-grid",
    name = "tbx-equipment-grid",
    width = settings.startup["tbx-equipment-grid-width"].value,
    height = settings.startup["tbx-equipment-grid-height"].value,
    equipment_categories = {}
  }

  -- Get all equipment categories
  for _, category in pairs(data.raw["equipment-category"]) do
    table.insert(wagon_grid.equipment_categories, category.name)
  end

  -- Add the new grid to the game
  data:extend({wagon_grid})
end



function add_equipment_grid_to_entities(entity, settings)
  local settings_name = "tbx-enable-" .. entity .. "-equipment-grid"
  if entity == "artillery-wagon" then
    -- Disable after user feedback
    return
  end
  if settings.startup[settings_name].value == false then
    return
  end
  for _, e in pairs(data.raw[entity]) do
    e.equipment_grid = "tbx-equipment-grid"
  end
end

function main (settings)
  add_equipment_grid_to_game()
  local entities = {
    "cargo-wagon",
    "fluid-wagon",
    "artillery-wagon"
  }
  for _, entity in pairs(entities) do
    add_equipment_grid_to_entities(entity, settings)
  end
end

main(settings)