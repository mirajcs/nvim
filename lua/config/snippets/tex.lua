local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Definition snippet
  s("def", {
    t("\\begin{definition}"), t({ "", "\t" }), i(1, "Definition here..."),
    t({ "", "\\end{definition}" }),
  }),

  -- Theorem snippet
  s("thm", {
    t("\\begin{theorem}"), t({ "", "\t" }), i(1, "Theorem statement here..."),
    t({ "", "\\end{theorem}" }),
  }),

  --section
  s("sec*", {
    t("\\section*{"),i(1, "Section Title"), t("}"),
  }),
}
