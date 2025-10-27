return {
  --- Override ---
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
  },

  {
    'stevearc/conform.nvim',
    event = 'BufWritePre', -- uncomment for format on save
    opts = require('configs.conform'),
  },

  {
    'lewis6991/gitsigns.nvim',
    opts = function()
      return require('configs.gitsigns')
    end,
  },

  {
    'williamboman/mason.nvim',
    opts = function()
      return require('configs.mason')
    end,
  },

  {
    'neovim/nvim-lspconfig',
    config = function()
      require('configs.lspconfig')
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    opts = function()
      return require('configs.cmp')
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    ft = 'checkhealth',
    opts = function()
      return require('configs.treesitter')
    end,
  },

  --- Custom ---
  { 'echasnovski/mini.nvim' }, -- For which-key

  { 'nvim-treesitter/nvim-treesitter-textobjects' }, -- For nvim-surround

  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup()
    end,
  },

  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',
    cmd = { 'NoNeckPain' },
    opts = require('configs.nnp'),
  },

  -- https://github.com/lukas-reineke/virt-column.nvim/issues/49
  -- {
  --   'lukas-reineke/virt-column.nvim',
  --   lazy = false,
  --   opts = require('configs.virt-column'),
  -- },

  {
    'lambdalisue/vim-suda',
    cmd = { 'SudaRead' }, -- No expose SudaWrite
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    event = { 'BufReadPost', 'BufNewFile' },
  },

  {
    'windwp/nvim-ts-autotag',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
}
