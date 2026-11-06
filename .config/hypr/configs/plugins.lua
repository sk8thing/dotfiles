-----------------
---- PLUGINS ----
-----------------
-- somewhere in your Hyprland config
package.path = package.path .. ";./?.lua;./?/init.lua"
smw = require("plugins.split-monitor-workspaces")

smw.setup({
	workspace_count = 5,
	monitor_priority = { "DP-2", "HDMI-A-2" },
})
