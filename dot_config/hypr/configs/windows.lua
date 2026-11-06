--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.workspace_rule({ workspace = "1", monitor = "DP-2", default = true })
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })

hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "force-no-dim",
	match = { class = "^(firefox|discord)$" },
	no_dim = true,
	opacity = "0.9 override 0.9 override 1.0 override",
})

hl.window_rule({
	name = "sysbar-float",
	match = { class = "^(blueman-manager|org.pulseaudio.pavucontrol|org.kde.kdeconnect.app)$" },
	float = true,
	pin = true,
	suppress_event = "fullscreen maximize",
	size = { "(monitor_w*0.333333)", "(monitor_h*0.333333)" },
	min_size = { "(monitor_w*0.333333)", "(monitor_h*0.333333)" },
	max_size = { "(monitor_w*0.333333)", "(monitor_h*0.333333)" },
	move = { "(monitor_w-window_w-10)", "64" },
})

hl.window_rule({
	name = "force-float",
	match = { class = "^([Tthunar]|nm-connection-editor|org.gnome.Calculator|vlc)$" },
	float = true,
})

hl.window_rule({
	name = "remember-size",
	match = { class = "^(org.gnome.Calculator)$" },
	float = true,
	persistent_size = true,
})

hl.window_rule({
	name = "picture-in-picture",
	match = { title = "^(Picture-in-Picture)$" },
	float = true,
	pin = true,
	persistent_size = true,
})

hl.window_rule({
	name = "xwayland-video-bridge",
	match = { class = "^(xwaylandvideobridge)$" },
	opacity = "0.0 override",
	no_anim = true,
	no_initial_focus = true,
	max_size = { "1", "1" },
	no_blur = true,
	no_focus = true,
})

hl.layer_rule({
	name = "rofi",
	match = { namespace = "rofi" },
	blur = true,
	ignore_alpha = 0,
})

hl.layer_rule({
	name = "waybar",
	match = { namespace = "waybar" },
	blur = true,
	ignore_alpha = 0,
})

hl.layer_rule({
	name = "logout_dialog",
	match = { namespace = "logout_dialog" },
	blur = true,
})

hl.layer_rule({
	name = "hyprpicker",
	match = { namespace = "hyprpicker" },
	no_anim = true,
})

hl.layer_rule({
	name = "selection",
	match = { namespace = "selection" },
	no_anim = true,
})
