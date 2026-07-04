---------------------
---- MY PROGRAMS ----
---------------------

uwsm = "uwsm app -- "
terminal = uwsm .. "wezterm start --always-new-process"
menu = "rofi -show drun -run-command 'uwsm app -- {cmd}'"
browser = uwsm .. "firefox"
lock = "hyprlock"
logout = "wlogout -C /home/sk8thing/.config/wlogout/style.css -l /home/sk8thing/.config/wlogout/layout --protocol layer-shell -b 5 -T 400 -B 400"
screenshot = "hyprshot -m region --clipboard-only"
clipboard_clear = "wl-copy --clear"
