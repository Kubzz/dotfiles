local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Regular' })
config.font_size = 12.0
config.line_height = 1.1

-- Window
config.window_decorations = "RESIZE"
config.window_padding = { left = 6, right = 6, top = 6, bottom = 6 }
config.initial_cols = 140
config.initial_rows = 40
config.window_close_confirmation = "NeverPrompt"

-- Tab bar off — assuming tmux owns tabs/panes day to day
config.enable_tab_bar = false

-- Scrollback
config.scrollback_lines = 10000

-- Cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 500

-- Performance
config.max_fps = 120
config.animation_fps = 60
config.front_end = "WebGpu"

-- Leader key for wezterm-level actions
config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }

config.keys = {
  { key = '|', mods = 'LEADER|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = '-', mods = 'LEADER',       action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

  { key = 'h', mods = 'LEADER', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'j', mods = 'LEADER', action = wezterm.action.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'LEADER', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'l', mods = 'LEADER', action = wezterm.action.ActivatePaneDirection 'Right' },

  { key = '=', mods = 'CTRL', action = wezterm.action.IncreaseFontSize },
  { key = '-', mods = 'CTRL', action = wezterm.action.DecreaseFontSize },
  { key = '0', mods = 'CTRL', action = wezterm.action.ResetFontSize },

  { key = 'x', mods = 'LEADER', action = wezterm.action.ActivateCopyMode },
  { key = 'f', mods = 'LEADER', action = wezterm.action.Search { CaseSensitiveString = '' } },

  { key = 't', mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentTab { confirm = false } },

  { key = 'r', mods = 'LEADER', action = wezterm.action.ReloadConfiguration },
}

config.automatically_reload_config = true

return config
