-- ~/.config/nvim/lua/config/lsp.lua
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" },
  handlers = {
    function(server)
      require("lspconfig")[server].setup({})
    end,
  },
})
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args) require("luasnip").lsp_expand(args.body) end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
})
