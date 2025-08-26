-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = 'catppuccin',

  -- hl_override = {
  --   Comment = { italic = true },
  --   ["@comment"] = { italic = true },
  -- },
}

M.ui = {
  statusline = {
    theme = 'vscode_colored',
    -- separator_style = "block",
    order = {
      'mode',
      'file',
      -- '_file',
      '_mode',
      '_readonly',
      'git',
      '%=',
      'lsp_msg',
      '%=',
      'diagnostics',
      'lsp',
      '_count',
      -- 'cwd',
      '_user',
    },
    modules = {
      _file = '%#StText#' .. ' %t ',
      _mode = function()
        if vim.api.nvim_get_option_value('modifiable', { buf = 0 }) then
          return '%#St_lspWarning#' .. '%m' .. '%#StText#'
        else
          return '%#St_LspMsg#' .. '[-]' .. '%#StText#'
        end
      end,

      _readonly = '%#St_LspMsg#' .. '%r' .. '%#StText#',
      _count = '%#StText#' .. 'C:%c/%p%%' .. ' ',
      _user = '%#St_cwd#  ' .. vim.fn.expand('$USER') .. ' ',
    },
  },
}

M.mason = {
  pkgs = { 'docformatter', 'xmlformatter' }, -- Temp fix
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
