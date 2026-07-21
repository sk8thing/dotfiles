-----------------
---- PLUGINS ----
-----------------
hl.config({
	plugin = {
		split_monitor_workspaces = {
			count = 5,
		},
	},
})

hl.plugin.split_monitor_workspaces.monitor_priority({ "DP-2", "HDMI-A-2" })
