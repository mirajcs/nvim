-- Enable language servers
local lspconfig = require("lspconfig")

-- Lua language server
lspconfig.lua_ls.setup({})

-- Python
lspconfig.pyright.setup({})

-- Completion config
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
  },
})
