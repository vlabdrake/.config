local wezterm = require 'wezterm'

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'rose-pine'
  else
    return 'rose-pine-dawn'
  end
end

return {
  color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
  font = wezterm.font 'JetBrains Mono',
  font_size = 13,
  default_prog = { '/usr/bin/fish', '-l' },
  window_decorations = "RESIZE",
  window_frame = {
  border_left_width = '1px',
  border_right_width = '1px',
  border_bottom_height = '1px',
  border_top_height = '1px',
  border_left_color = 'black',
  border_right_color = 'black',
  border_bottom_color = 'black',
  border_top_color = 'black',
},
  hide_tab_bar_if_only_one_tab = true
}

