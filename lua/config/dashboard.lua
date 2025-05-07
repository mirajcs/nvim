-- ~/.config/nvim/lua/config/dashboard.lua
local db = require("dashboard")
db.setup({
  theme = "doom",
  config = {
    header = {
      "     __  ___  __ __           ",
      "    /  |/  /_/_/_ _/ /____  _____",
      "   / /|_/ / __ `/ __/ _ \\/ ___/",
      "  / /  / / /_/ / /_/  __/ /    ",
      " /_/  /_/\\__,_/\\__/\\___/_/     ",
      "                               ",
      "       Welcome, Miraj 👋        ",
    },
    center = {
      { icon = "  ", desc = "File Tree", action = "NvimTreeToggle" },
      { icon = "󰱼  ", desc = "Find File", action = "Telescope find_files" },
      { icon = "  ", desc = "Recent Files", action = "Telescope oldfiles" },
    },
    footer = { "🧠 Code smart. Stay sharp, Miraj." }
  }
})
