local chatgpt = require("chatgpt")

chatgpt.setup({
  openai_params = {
    model = "gpt-3.5-turbo",
    temperature = 0.3,
    max_tokens = 1000,
  },
  openai_edit_params = {
    model = "gpt-4",
    temperature = 0.2,
    top_p = 1,
  },
})

vim.api.nvim_create_user_command("ChatGPTNew", function()
  local status_ok, chatgpt = pcall(require, "chatgpt")
  if not status_ok or not chatgpt then
    vim.notify("ChatGPT.nvim not loaded", vim.log.levels.ERROR)
    return
  end

  chatgpt.openChat()  -- This opens a new chat buffer
end, {})
