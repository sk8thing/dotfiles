-------------------
---- AUTOSTART ----
-------------------
-- https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("uwsm app -- nm-applet --indicator")
	hl.exec_cmd("uwsm app -- kdeconnectd")
end)
