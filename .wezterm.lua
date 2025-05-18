local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("Fira Code Nerd Font")
config.font_size = 14
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9
--config.default_prog = { "tmux" }

config.keys = {
	--{ mods = '', key = "Home", action = wezterm.action { SendString = "\001" } },
	--{ mods = '', key = "End",  action = wezterm.action { SendString = "\005" } },
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	-- This will create a new split and run your default program inside it
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = ";",
		mods = "CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "SUPER",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "l",
		mods = "SUPER",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
