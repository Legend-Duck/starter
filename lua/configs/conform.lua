local options = {
  formatters_by_ft = {
    css = { 'prettier' },
    html = { 'prettier' },
    java = { 'google-java-format' },
    javascript = { 'prettier' },
    json = { 'prettier' },
    lua = { 'stylua' },
    luau = { 'stylua' },
    markdown = { 'prettier' },
    python = { 'isort', 'docformatter', 'black' },
    rust = { 'rustfmt' },
    xml = { 'xmlformatter' },
    yaml = { 'prettier' },
    -- Use the "*" filetype to run formatters on all filetypes.
    ['*'] = { 'codespell' },
    -- Use the "_" filetype to run formatters on filetypes that don't
    -- have other formatters configured.
    ['_'] = { 'trim_whitespace' },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = 'fallback',
  },

  formatters = {
    stylua = {
      args = function()
        if not vim.fs.root(0, { 'stylua.toml', '.stylua.toml' }) then
          return {
            '--column-width',
            '100',
            '--line-endings',
            'Unix',
            '--indent-type',
            'Spaces',
            '--indent-width',
            '2',
            '--quote-style',
            'AutoPreferSingle',
            '--call-parentheses',
            'Always',
            '--sort-requires',
          }
        else
          return {}
        end
      end,

      append_args = { '-' },
    },
    isort = {
      args = { '--profile', 'black' },
      append_args = { '-' },
    },
    docformatter = {
      args = { '--black' },
      append_args = { '-' },
    },
  },
}

return options
