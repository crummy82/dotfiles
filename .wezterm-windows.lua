local wezterm = require 'wezterm'

-- WSL only
local wsl_domains = wezterm.default_wsl_domains()

return { 
  audible_bell = 'Disabled',
  color_scheme = "Dracula (Official)",
  colors = {
    ansi = {"#21222C", "#FF5555", "#50FA7B", "#F1FA8C", "#8866FF", "#FF79C6", "#8BE9FD", "#F8F8F2"},
    brights = {"#6272A4", "#FF6E6E", "#69FF94", "#FFFFA5", "#D6ACFF", "#FF92DF", "#A4FFFF", "#FFFFFF"}
  },
  
  default_prog = {'wsl.exe'}, -- WSL only
  enable_scroll_bar = true,
  font = wezterm.font 'Consolas',
  font_size = 12.0,
  force_reverse_video_cursor = true,
  hide_tab_bar_if_only_one_tab = true,
  initial_cols = 120,
  initial_rows = 26,
  scrollback_lines = 10000,
  show_update_window = true,
  use_dead_keys = false,
  window_close_confirmation = 'NeverPrompt',
  wsl_domains = wsl_domains -- WSL only
}
