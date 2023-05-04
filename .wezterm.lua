
-- Pull in the uwezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}
wezterm.log_error('Version ' .. wezterm.version)
-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Gruvbox Material (Gogh)'
config.color_scheme = "Catppuccin Mocha" 
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false
config.show_tabs_in_tab_bar = false
config.font = wezterm.font "CaskaydiaCove Nerd Font Mono", {bold=true}
config.font_size = 15
config.freetype_load_target = "Normal"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
  top = "0cell",
  bottom = "1.5cell"
}
config.enable_tab_bar = enable 

-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 30 

config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'Roboto', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10. on Windows but 12.0 on other systems
  font_size = 20.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#1e1e2e',
  -- active_titlebar_bg ="#282828",

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#1e1e2e',
  -- inactive_titlebar_bg ="#282828"

}



-- and finally, return the configuration to wezterm
return config
