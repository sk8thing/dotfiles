-----------------------
---- LOOK AND FEEL ----
-----------------------

require("hyprland-matugen")

hl.config({
	-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
	general = {
		gaps_in = 5,
		gaps_out = 10,

		border_size = 2,

		col = {
			active_border = primary,
			inactive_border = on_surface,
		},

		resize_on_border = true,

		allow_tearing = true,

		layout = "dwindle",
	},

	-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = 0.9,
		inactive_opacity = 0.8,
		fullscreen_opacity = 1,
		dim_inactive = 1,
		dim_strength = 0.1,
		dim_special = 0.5,

		shadow = {
			enabled = true,
			range = 5,
			render_power = 1,
		},

		blur = {
			enabled = true,
			new_optimizations = true,
			size = 2,
			passes = 5,
			popups = true,
		},
	},

	-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
	animations = {
		enabled = true,
	},

	-- https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/
	dwindle = {
		preserve_split = true,
	},

	-- https://wiki.hypr.land/Configuring/Layouts/Master-Layout/
	master = {
		new_status = "slave",
		allow_small_split = false,
		new_on_top = false,
		new_on_active = "after",
	},

	misc = {
		force_default_wallpaper = -1,
		disable_hyprland_logo = true,
	},
})

hl.curve("wind", { type = "bezier", points = { { 0, 1.2 }, { 0, 1 } } })
hl.curve("smooth_in", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })
hl.curve("wind_in", { type = "bezier", points = { { 0.1, 1.1 }, { 0.1, 1.05 } } })
hl.curve("linear", { type = "bezier", points = { { 1, 1 }, { 1, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "wind", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "default", style = "popin 90%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "layers", enabled = true, speed = 5, bezier = "default", style = "slide" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "smooth_in" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "smooth_in" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 3, bezier = "smooth_in" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "default", style = "slideadvert 15%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "default", style = "slideadvert 15%" })
