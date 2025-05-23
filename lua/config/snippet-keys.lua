local ls = require("luasnip")

-- Keymap for expanding or jumping to the next snippet field
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if ls.expand_or_jumpable() then
    return "<Plug>luasnip-expand-or-jump"
  else
    return "<Tab>"
  end
end, { expr = true, silent = true })

-- Jump backward in snippet fields
vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    return "<Plug>luasnip-jump-prev"
  else
    return "<S-Tab>"
  end
end, { expr = true, silent = true })
