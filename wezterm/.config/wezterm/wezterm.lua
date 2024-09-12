-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.initial_cols = 180
config.initial_rows = 47

config.color_scheme = "catppuccin-macchiato"

config.line_height = 1.0
config.font = wezterm.font_with_fallback({ "JetBrainsMono Nerd Font", { family = "LXGW WenKai", scale = 1 } })
config.font_size = 11

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
}

config.visual_bell = {
  fade_in_duration_ms = 75,
  fade_out_duration_ms = 75,
  target = "CursorColor",
}

config.default_cursor_style = "BlinkingBlock"

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
  options = {
    icons_enabled = true,
    theme = 'Catppuccin Mocha',
    color_overrides = {},
    section_separators = {
      left = wezterm.nerdfonts.pl_left_hard_divider,
      right = wezterm.nerdfonts.pl_right_hard_divider,
    },
    component_separators = {
      left = wezterm.nerdfonts.pl_left_soft_divider,
      right = wezterm.nerdfonts.pl_right_soft_divider,
    },
    tab_separators = {
      left = wezterm.nerdfonts.pl_left_hard_divider,
      right = wezterm.nerdfonts.pl_right_hard_divider,
    },
  },
  sections = {
    tabline_a = { 'mode' },
    tabline_b = { 'workspace' },
    tabline_c = { ' ' },
    tab_active = {
      'tab_index',
      { 'parent', padding = 0 },
      '/',
      { 'cwd',    padding = { left = 0, right = 1 } },
    },
    tab_inactive = { 'tab_index', { 'process', padding = { left = 0, right = 1 } } },
    tabline_x = { 'ram', 'cpu' },
    tabline_y = { 'datetime', 'battery' },
    tabline_z = { 'hostname' },
  },
  extensions = {},
})
return config
