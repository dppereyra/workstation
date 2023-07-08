local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.color_scheme = 'Codeschool (light) (terminal.sexy)'
config.color_scheme = 'Catppuccin Macchiato'

config.font =
    wezterm.font('VictorMono Nerd Font', { weight = 'DemiBold' })

config.font_size = 12.0

config.launch_menu = {
  {
    args = { 'top' },
  },
  { label = 'Nu Shell',   args = { '/usr/bin/nu' }, },
  { label = 'Fish Shell', args = { '/usr/bin/fish' }, },
}

return config
