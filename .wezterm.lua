local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

config.audible_bell = 'Disabled'
config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = "Dracula (Official)",
config.enable_scroll_bar = true
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 12.0
config.force_reverse_video_cursor = true
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 112
config.initial_rows = 26
config.scrollback_lines = 10000
config.show_update_window = true
config.use_dead_keys = false
config.window_close_confirmation = 'NeverPrompt'

wezterm.on('gui-startup', function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

return config
