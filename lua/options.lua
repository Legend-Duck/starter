require("nvchad.options")

local opt = vim.opt
local g = vim.g

local options = {
  --- Override ---
  cursorlineopt = "both",
  shortmess = opt.shortmess - "I",
  whichwrap = opt.whichwrap - "<>[]hl",

  --- Custom ---
  -- colorcolumn = "80",
  list = true,
  listchars = "tab:> ,nbsp:+",
  relativenumber = false,
}

for key, value in pairs(options) do
  opt[key] = value
end

-- No mouse & clipboard on server
if jit.os == "Linux" then
  opt.mouse = ""
  opt.clipboard = ""
end

-- Neovide config (for Windows)
if g.neovide then
  -- use neovide --grid=120x30
  -- opt.columns = 90
  -- opt.lines = 24
  opt.guifont = "JetBrainsMono NF:h12"

  g.neovide_refresh_rate = 30
  g.neovide_remember_window_size = false

  g.neovide_position_animation_length = 0
  g.neovide_cursor_animation_length = 0.00
  g.neovide_cursor_trail_size = 0
  g.neovide_cursor_animate_in_insert_mode = false
  g.neovide_cursor_animate_command_line = false
  g.neovide_scroll_animation_far_lines = 0
  g.neovide_scroll_animation_length = 0.00
  g.neovide_cursor_vfx_mode = ""
end
