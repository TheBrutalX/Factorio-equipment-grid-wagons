data:extend({
  {
    type = "bool-setting",
    name = "tbx-enable-wagon-equipment-grid",
    setting_type = "startup",
    default_value = true,
    order = "a"
  },
  {
    type = "int-setting",
    name = "tbx-equipment-grid-width",
    setting_type = "startup",
    default_value = 6,
    minimum_value = 1,
    order = "b"
  },
  {
    type = "int-setting",
    name = "tbx-equipment-grid-height",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    order = "c"
  }
});