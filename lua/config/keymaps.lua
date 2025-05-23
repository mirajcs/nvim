-- ~/.config/nvim/lua/config/keymaps.lua
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Tree" })


--tab management
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous tab" })

--chat GPT
vim.keymap.set("n", "<leader>cc", ":ChatGPT<CR>", { desc = "Chat with GPT-3.5" })
vim.keymap.set("n", "<leader>cn", ":ChatGPTNew<CR>", {desc = "Chat with GPT-3.5"})
vim.keymap.set("v", "<leader>ce", ":ChatGPTEditWithInstructions<CR>", { desc = "Edit with GPT-4" })

-- init.lua example
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', {})



