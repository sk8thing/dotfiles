-----------------
---- PLUGINS ----
-----------------

package.path = package.path .. ";./?/.lua;./?/init.lua"

-- https://github.com/KZDKM/Hyprspace
hyprspace = require("plugins.Hyprspace.Hyprspace")
hyprspace.setup()

-- https://github.com/zjeffer/split-monitor-workspaces
swm = require("plugins/split-monitor-workspaces")
swm.setup({
	workspace_count = 5,
	monitor_priority = { "DP-2", "HDMI-A-1" },
})
