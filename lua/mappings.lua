require('nvchad.mappings')

-- add yours here

local map = vim.keymap.set

-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', 'j', 'gj')
map('n', 'k', 'gk')

map('v', ';', ':')
map('v', '>', '>gv')
map('v', '<', '<gv')
