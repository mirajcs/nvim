-- ~/.config/nvim/lua/config/vimtex.lua
-- set localleader early in init.lua or before plugins localleader
vim.g.maplocalleader = "\\"
--Vimtex Settings
vim.g.vimtex_mapping_enabled = 1
-- Set Skim as the PDF viewer (macOS) with forward/backward sync
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1

-- Auto-compile with latexmk
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  build_dir = "",
  callback = 1,
  continuous = 1,
  executable = "latexmk",
  hooks = {},
  options = {
    "-pdf",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
  },
}

-- Do not open quickfix window unless there are errors
vim.g.vimtex_quickfix_mode = 0

-- Enable folding (based on sections, etc.)
vim.g.vimtex_fold_enabled = 1

-- Enable indentation
vim.g.vimtex_indent_enabled = 1

-- Automatically open PDF after compilation (if viewer supports it)
vim.g.vimtex_view_automatic = 1

-- Let VimTeX handle conceal (e.g., for \alpha → α)
vim.g.vimtex_syntax_conceal = {
  accents = 1,
  greek = 1,
  math_bounds = 1,
  math_delimiters = 1,
  math_fracs = 1,
  math_super_sub = 1,
  math_symbols = 1,
  sections = 0,
  styles = 1,
}

-- Enable conceal for LaTeX
vim.opt.conceallevel = 2            -- 0 = off, 1 = conceal some, 2 = conceal all
vim.opt.concealcursor = "nc"        -- Apply conceal in normal (n) and command (c) modes

-- Enable VimTeX conceal features
vim.g.vimtex_syntax_conceal = {
  accents = 1,
  greek = 1,
  math_bounds = 1,
  math_delimiters = 1,
  math_fracs = 1,
  math_super_sub = 1,
  math_symbols = 1,
  sections = 0,     -- optional: prevent folding \section titles
  styles = 1,
}

-- Keybindings you may want to use:
-- \ll    Compile
-- \lv    View PDF
-- \lc    Clean
-- \le    Errors
-- \ls    Status
