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


-- Setup Mason (LSP installer)
require("mason").setup()

-- Setup Mason LSP integration
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",    -- Python
    "texlab",     -- LaTeX
    "lua_ls",     -- Lua
  },
  automatic_installation = true,
})

-- Setup LSP servers via handlers
local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
  function(server_name)
    local opts = {}

    -- Special settings per server
    if server_name == "lua_ls" then
      opts = {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      }
    end

    -- Generic setup
    lspconfig[server_name].setup(opts)
  end,
})
