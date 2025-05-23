return {
  -- Core UI
  { "catppuccin/nvim", name="catppuccin", priority = 1000 },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua" },
  { "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "akinsho/bufferline.nvim", version = "*", dependencies = { "nvim-tree/nvim-web-devicons" } },

  --chat gpt
  {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    require("config.chatgpt")  -- load config from your custom file
  end,
  },

  -- Telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP & Completion
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  { "williamboman/mason-lspconfig.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "saadparwaiz1/cmp_luasnip" },
-- LaTeX support
  { "lervag/vimtex", lazy=false },
-- Git Integration
{ "tpope/vim-fugitive" },   -- Git commands inside Neovim
{ "lewis6991/gitsigns.nvim", dependencies = { "nvim-lua/plenary.nvim" } }, -- Git signs in gutter
--Auto compile
{
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      debounce_delay = 3000, -- 3 seconds
    })
  end,
},
{
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/config/snippets"}) -- loads friendly-snippets
  end,
},
} 

