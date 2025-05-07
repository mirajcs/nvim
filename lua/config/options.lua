-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartcase = true
opt.ignorecase = true
opt.scrolloff = 8
opt.splitbelow = true
opt.splitright = true
opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.linebreak = true       -- break at word boundaries
vim.opt.showbreak = "↳ "       -- visual indicator for wrapped lines
