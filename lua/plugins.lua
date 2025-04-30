return {
  -- Utility
  "nvim-lua/plenary.nvim",

  -- Colorscheme
  { "folke/tokyonight.nvim", lazy = false, priority = 1000,
    config = function() vim.cmd("colorscheme tokyonight") end
  },

  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP
  { "neovim/nvim-lspconfig" },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
    }
  },
}
