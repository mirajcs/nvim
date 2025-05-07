-- ~/.config/nvim/lua/config/bufferline.lua
require("bufferline").setup({
  options = {
    diagnostics = "nvim_lsp",
    separator_style = "slant",
  },
})
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
