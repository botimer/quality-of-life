return {
  { "mason-org/mason.nvim", opts = {} },
  { "neovim/nvim-lspconfig" },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },

  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
  },
}
