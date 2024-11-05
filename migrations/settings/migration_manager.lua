require("migrations.settings.0001_renamed_enable-cargo-wagon-equipment-grid");

local migrations = require("migrations.settings.settings-migrations");

function run()
  for _, migration in pairs(migrations) do
    local old_name = migration.old;
    local new_name = migration.new;
    if settings.startup[old_name] then
      settings.startup[new_name] = settings.startup[old_name];
      settings.startup[old_name] = nil;
    end
  end
end

return {
  run = run
}