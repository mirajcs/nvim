-- ~/.config/nvim/lua/plugins.lua

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins list
require("lazy").setup({
	{
  "nvim-lua/plenary.nvim",
  lazy = false  -- load it immediately (optional)
	},
{
  "folke/tokyonight.nvim",     -- Plugin repo: github.com/folke/tokyonight.nvim
  lazy = false,                -- Load this plugin immediately (not lazily)
  priority = 1000,             -- Load it before most other plugins (colorschemes need to load early)
  config = function()
    vim.cmd("colorscheme tokyonight")  -- Set the active colorscheme to Tokyonight
  end,
},
  {
    "nvim-telescope/telescope.nvim",
  },
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",  -- Automatically updates parsers after install
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua", "python", "latex", "markdown", "bash", "json", "html", "css",
      }, -- Add your preferred languages
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = {
        enable = true,
        extended_mode = true, -- Highlight also non-bracket delimiters
        max_file_lines = nil, -- Do not limit by line count
      },
      playground = {
        enable = true,
        updatetime = 25,
        persist_queries = false,
      },
    })
  end,
{ "p00f/nvim-ts-rainbow" },
{ "nvim-treesitter/playground" },
},
  {
    "lervag/vimtex",
    ft = "tex",
    config = function()
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_activate = 1
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_quickfix_mode = 0
    end,
  },
  {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      trigger_events = { "InsertLeave", "TextChanged" },
    })
  end,
},

-- LSP + Mason setup
{
  "neovim/nvim-lspconfig"
},
{
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  config = true
},
{
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim", "nvim-lspconfig" },
},
{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",       -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- LuaSnip completion source
  },
},

})

