---------------------
---- KEYBINDINGS ----
---------------------
-- https://wiki.hypr.land/Configuring/Basics/Binds/

require("configs/programs")
require("configs/plugins")
local mainMod = "SUPER"
local shiftMainMod = "SUPER + SHIFT"
local shiftControlMainMod = "SUPER + CTRL + SHIFT"

hl.bind(mainMod .. " + X", hl.dsp.window.close())
hl.bind(shiftMainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(shiftMainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(shiftMainMod .. " + U", hl.dsp.exec_cmd(lock))
hl.bind(shiftMainMod .. " + Q", hl.dsp.exec_cmd(logout))
hl.bind(mainMod .. " + G", function()
	hl.plugin.overview.toggle()
end)
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd(screenshot))
hl.bind(shiftMainMod .. " + Delete", hl.dsp.exec_cmd(clipboard_clear))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(shiftMainMod .. " + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(shiftMainMod .. " + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(shiftMainMod .. " + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(shiftMainMod .. " + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(shiftControlMainMod .. " + 1", hl.dsp.focus({ monitor = "DP-2" }))
hl.bind(shiftControlMainMod .. " + 2", hl.dsp.focus({ monitor = "HDMI-A-1" }))

for i = 1, 5 do
	local n = tostring(i)
	if n == "10" then
		n = "0"
	end
	hl.bind(mainMod .. " +" .. n, function()
		return hl.plugin.split_monitor_workspaces.workspace(n)
	end)
	hl.bind(shiftMainMod .. " +" .. n, function()
		return hl.plugin.split_monitor_workspaces.move_to_workspace_silent(n)
	end)
end

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
