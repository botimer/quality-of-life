return {

  {
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },

  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        width = 80,
        options = {
          -- number = false
        }
      },
      plugins = {
        options = {
          wrap = true,
          lbr = true
        },
        -- twilight = { enabled = false }
      }
    }
  },
  {
    'folke/twilight.nvim',
  }


  -- {
  --   "ViViDboarder/wombat.nvim",
  --   dependencies = { { "rktjmp/lush.nvim" } },
  -- },
}
