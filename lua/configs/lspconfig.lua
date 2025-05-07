require('nvchad.configs.lspconfig').defaults()

local servers = {
  'bashls',
  'clangd',
  'cssls',
  'html',
  'java_language_server',
  'jsonls',
  'luau_lsp',
  'marksman',
  'pyright',
  'rust_analyzer',
  'ts_ls',
  'vimls',
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
