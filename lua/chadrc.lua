-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  -- theme = 'catppuccin', -- outdated
  theme = 'onedark',

  -- hl_override = {
  --   Comment = { italic = true },
  --   ["@comment"] = { italic = true },
  -- },
}

M.ui = {
  statusline = {
    theme = 'vscode_colored',
    order = {
      'mode',
      'file',
      '_help',
      '_modified',
      '_readonly',
      'git',
      '%=',
      'lsp_msg',
      '%=',
      'diagnostics',
      'lsp',
      'cursor',
      '_percentage',
      'cwd',
    },
    modules = {
      -- check available highlights with :filter /St_/ highlight
      _help = '%#St_ft#' .. '%h',
      _modified = function()
        if vim.api.nvim_get_option_value('modifiable', { buf = 0 }) then
          return '%#St_lspWarning#' .. '%m' -- show only when modified
        else
          return '%#St_LspError#' .. '[-]'
        end
      end,
      _readonly = '%#St_LspError#' .. '%r' .. '%#StText#', -- fix color
      _percentage = '%#StText#' .. '(%p%%) ',
    },
  },

  tabufline = {
    lazyload = false,
  },
}

-- M.nvdash = { load_on_startup = true }

return M
