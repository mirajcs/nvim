-- ~/.config/nvim/lua/config/nvimtree.lua
require("nvim-tree").setup({
  filters = { dotfiles = false },
  git = { enable = true },
  diagnostics = {
    enable = true,
    icons = {
      hint = "", info = "", warning = "", error = ""
    },
  },
})
