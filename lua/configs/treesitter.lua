local options = {
  ensure_installed = {
    --- Language ---
    'css',
    'scss',
    'go',
    'html',
    'java',
    'javascript',
    'lua',
    'python',

    --- Shell ---
    'bash',
    'powershell',

    --- Build ---
    'dockerfile',
    'make',

    --- Git ---
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',

    --- Data ---
    'desktop',
    'ini',
    'json',
    'json5',
    'toml',
    'xml',
    'yaml',

    --- Config ---
    'nginx',
    'passwd',
    'ssh_config',

    --- Text ---
    'markdown',
    'markdown_inline',
  },
}

return require('utils').ext('treesitter', options)
