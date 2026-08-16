return {
  --- Override ---
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require("configs.conform"),
  },

  {
    "williamboman/mason.nvim",
    opts = require("configs.mason"),
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require("configs.cmp"),
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    ft = "checkhealth",
    opts = require("configs.treesitter"),
  },

  --- Custom ---
  { "echasnovski/mini.nvim" }, -- For which-key

  { "nvim-treesitter/nvim-treesitter-textobjects" }, -- For nvim-surround

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    cmd = { "NoNeckPain" },
    opts = require("configs.nnp"),
  },

  {
    "lambdalisue/vim-suda",
    cmd = { "SudaRead" }, -- No expose SudaWrite
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPost", "BufNewFile" },
  },

  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
}
