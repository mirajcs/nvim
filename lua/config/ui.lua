
vim.g.mapleader=" "
vim.g.maplocalleader=" "


-- ~/.config/nvim/lua/config/ui.lua


vim.cmd.colorscheme("catppuccin")
require("lualine").setup()
require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "python", "latex" },
  highlight = { enable = true },
})
