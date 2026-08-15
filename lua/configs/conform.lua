return {
  formatters_by_ft = {
    lua = { "stylua" },
    bash = { "shfmt" },
    python = { "ruff" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    vue = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    less = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    handlebars = { "prettier" },
  },

  -- If this is set, Conform will run the formatter on save.
  -- It will pass the table to conform.format().
  -- This can also be a function that returns the table.
  format_on_save = {},

  formatters = {
    stylua = {
      append_args = {
        "--indent-type",
        "Spaces",
        "--indent-width",
        "2",
        "--sort-requires",
      },
    },
  },
}
