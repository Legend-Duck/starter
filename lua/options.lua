require('nvchad.options')

-- add yours here!

local opt = vim.opt
-- local o = vim.o
local g = vim.g

-- o.cursorlineopt = 'both' -- to enable cursorline!
-- g.virtcolumn_priority = 0 -- priority of extmark

local options = {
  --- Override ---
  clipboard = '',
  cursorlineopt = 'both',
  -- fillchars = { eob = '~' },
  mouse = '',
  shortmess = opt.shortmess - 'I',
  whichwrap = opt.whichwrap - '<>[]hl',

  --- Custom ---
  -- colorcolumn = '100',
  list = true,
  -- listchars = 'eol:↴,tab:> ,space:·,nbsp:+',
  listchars = 'tab:> ,nbsp:+',
  relativenumber = false,
  scrolloff = 999,
}

for key, value in pairs(options) do
  opt[key] = value
end

-- Neovide config
if g.neovide then
  -- opt.columns = 91
  -- opt.lines = 22

  g.neovide_refresh_rate = 30
  g.neovide_remember_window_size = true

  g.neovide_position_animation_length = 0
  g.neovide_cursor_animation_length = 0.00
  g.neovide_cursor_trail_size = 0
  g.neovide_cursor_animate_in_insert_mode = false
  g.neovide_cursor_animate_command_line = false
  g.neovide_scroll_animation_far_lines = 0
  g.neovide_scroll_animation_length = 0.00
  g.neovide_cursor_vfx_mode = ''
end
