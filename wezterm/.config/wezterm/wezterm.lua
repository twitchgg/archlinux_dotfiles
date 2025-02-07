require 'wezterm'.on('format-window-title', function()
  return 'Develop'
end)
-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.initial_cols = 150
config.initial_rows = 36
config.window_decorations = "NONE"

config.color_scheme = "Catppuccin Mocha"

config.line_height = 1.0
config.font = wezterm.font_with_fallback({ "JetBrainsMono Nerd Font", { family = "LXGW WenKai", scale = 1 } })
config.font_size = 19

config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.hide_mouse_cursor_when_typing = true

config.visual_bell = {
  fade_in_function = "EaseIn",
  fade_in_duration_ms = 150,
  fade_out_function = "EaseOut",
  fade_out_duration_ms = 150,
}

config.colors = {
  visual_bell = "#202020",
  -- Make the selection text color fully transparent.
  -- When fully transparent, the current text color will be used.
  selection_fg = 'none',
  -- Set the selection background color with alpha.
  -- When selection_bg is transparent, it will be alpha blended over
  -- the current cell background color, rather than replace it
  selection_bg = 'rgba(50% 50% 50% 50%)',
}

config.visual_bell = {
  fade_in_duration_ms = 75,
  fade_out_duration_ms = 75,
  target = "CursorColor",
}

config.default_cursor_style = "BlinkingBlock"
config.window_background_opacity = 0.95
config.text_background_opacity = 0.95

config.keys = {
  {
    key = 'f',
    mods = 'CMD',
    action = wezterm.action.ToggleFullScreen,
  }
}

return config
