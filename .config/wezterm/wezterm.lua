local wezterm = require("wezterm")
local sessionizer = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")
sessionizer.zoxide_path = "/usr/bin/zoxide"
local config = wezterm.config_builder()

config.enable_wayland = true
config.max_fps = 144
config.animation_fps = 144

config.font = wezterm.font("NotoMono Nerd Font")
config.color_scheme = "WezTerm Matugen"

config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false

config.window_decorations = "NONE"
config.window_background_opacity = 0.9

config.window_frame = {
  font = wezterm.font { family = "NonoMono Nerd Font", weight = "Bold" },
  font_size = 12,
  active_titlebar_bg = "rgba(0, 0, 0, 0.9)",
}

wezterm.on("update-right-status", function(window, _)
  window:set_right_status(window:active_workspace())
end)

local function get_current_working_dir(tab)
  local current_dir = tab.active_pane and tab.active_pane.current_working_dir or { file_path = "" }
  local HOME_DIR = string.format("file://%s", os.getenv("HOME"))

  return current_dir == HOME_DIR and "." or string.gsub(current_dir.file_path, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-tab-title", function(tab, _, _, _, _, _)
  local has_unseen_output = false
  if not tab.is_active then
    for _, pane in ipairs(tab.panes) do
      if pane.has_unseen_output then
        has_unseen_output = true
        break
      end
    end
  end

  local cwd = wezterm.format({
    { Attribute = { Intensity = "Bold" } },
    { Text = get_current_working_dir(tab) },
  })

  local title = string.format(" [%s] %s ", tab.tab_index + 1, cwd)

  if has_unseen_output then
    return {
      { Foreground = { Color = "#f9e2af" } },
      { Text = title },
    }
  end

  return {
    { Text = title },
  }
end)

--- Keybinds
config.disable_default_key_bindings = true
config.keys = {
  { key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
  { key = "v", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
  { key = "s", mods = "CTRL|SHIFT", action = sessionizer.switch_workspace() },
  { key = "f", mods = "CTRL|SHIFT", action = wezterm.action.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
  { key = "[", mods = "CTRL|SHIFT", action = wezterm.action.SwitchWorkspaceRelative(1) },
  { key = "]", mods = "CTRL|SHIFT", action = wezterm.action.SwitchWorkspaceRelative(-1) },
  { key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
  { key = "w", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
  { key = "1", mods = "CTRL", action = wezterm.action.ActivateTab(0) },
  { key = "2", mods = "CTRL", action = wezterm.action.ActivateTab(1) },
  { key = "3", mods = "CTRL", action = wezterm.action.ActivateTab(2) },
  { key = "4", mods = "CTRL", action = wezterm.action.ActivateTab(3) },
  { key = "5", mods = "CTRL", action = wezterm.action.ActivateTab(4) },
  { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(-1) },
  { key = "Tab", mods = "CTRL", action = wezterm.action.ActivateTabRelative(1) },
  { key = "\"", mods = "CTRL|SHIFT|ALT", action = wezterm.action.SplitVertical({ domain="CurrentPaneDomain" }) },
  { key = "%", mods = "CTRL|SHIFT|ALT", action = wezterm.action.SplitHorizontal({ domain="CurrentPaneDomain" }) },
  { key = "h", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "j", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },
  { key = "k", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "l", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "w", mods = "CTRL|SHIFT|ALT", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
  { key = "~", mods = "CTRL|SHIFT|ALT", action = wezterm.action.ShowDebugOverlay },
}

return config
