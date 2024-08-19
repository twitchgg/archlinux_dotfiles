-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-macchiato"

config.line_height = 1.0
config.font = wezterm.font_with_fallback({ "JetBrainsMono Nerd Font", { family = "LXGW WenKai", scale = 1 } })
config.font_size = 12

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

return config
