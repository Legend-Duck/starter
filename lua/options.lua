require('nvchad.options')

-- add yours here!

local opt = vim.opt
-- local o = vim.o
-- local g = vim.g

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
  listchars = 'tab:> ,space:·,nbsp:+',
  relativenumber = false,
  scrolloff = 999,
}

for key, value in pairs(options) do
  opt[key] = value
end
