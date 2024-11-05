local migration_manager = require("migrations.settings.migration_manager")
script.on_configuration_changed(function(data)
  migration_manager.run()
end)