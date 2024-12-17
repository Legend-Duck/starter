local options = {
  ensure_installed = {
    --- Language ---
    'awk',
    'css',
    'go',
    'html',
    'java',
    'javascript',
    'lua',
    'luadoc',
    'luau',
    'php',
    'printf',
    'python',
    'rust',
    'vim',
    'vimdoc',

    --- Shell ---
    'bash',
    'fish',
    'powershell',
    'tmux',

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
    'gpg',
    'nginx',
    'passwd',
    'ssh_config',

    --- Text ---
    'markdown',
    'markdown_inline',
  },
}

return require('utils').ext('treesitter', options)
