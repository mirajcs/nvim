-- Set leader key BEFORE loading plugins
vim.g.mapleader = " "         -- or whatever key you prefer
vim.g.maplocalleader = "  "    -- optional, for local leader

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.termguicolors = true




-- Load plugins and config
require("lazy").setup("plugins")

-- Load config modules
require("config.options")
require("config.keymaps")
require("config.autocmd")
require("config.ui")
require("config.lsp")
require("config.telescope")
require("config.nvimtree")
require("config.bufferline")
require("config.dashboard")
require("config.vimtex")

require("config.snippet-keys")
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/config/snippets" })


-- Auto-insert LaTeX template for new .tex files
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "c_l_*.tex",
  callback = function()
    local template_path = vim.fn.expand("~/.config/nvim/templates/cover_letter.tex")
    vim.api.nvim_command("0r " .. template_path)
  end,
})
