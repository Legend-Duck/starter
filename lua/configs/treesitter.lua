return {
  ensure_installed = {
    --- Language ---
    "python",

    --- Shell ---
    "powershell",
    "bash",
    "zsh",

    --- Build ---
    "dockerfile",

    --- Git ---
    -- https://github.com/gbprod/tree-sitter-gitcommit/issues/88
    -- "gitcommit",
    "gitignore",

    --- Data ---
    "json",
    "toml",
    "yaml",

    --- Config ---
    "nginx",
    "ssh_config",

    --- Text ---
    "markdown",
    "markdown_inline",
  },
}
