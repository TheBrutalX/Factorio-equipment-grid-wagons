-- Define the Equipment Grid
local wagon_grid = {
  type = "equipment-grid",
  name = "wagon-equipment-grid",
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

-- Add the grid to all cargo wagons
for _, wagon in pairs(data.raw["cargo-wagon"]) do
  wagon.equipment_grid = "wagon-equipment-grid"
end

-- Add the grid to all fluid wagons
for _, wagon in pairs(data.raw["fluid-wagon"]) do
  wagon.equipment_grid = "wagon-equipment-grid"
end

-- Add the grid to all artillery wagons
for _, wagon in pairs(data.raw["artillery-wagon"]) do
  wagon.equipment_grid = "wagon-equipment-grid"
end

-- Add the grid to all locomotives
for _, wagon in pairs(data.raw["locomotive"]) do
  wagon.equipment_grid = "wagon-equipment-grid"
end

-- Add inventory to artillery wagon
for _, wagon in pairs(data.raw["artillery-wagon"]) do
  wagon.inventory_size = 20
end
