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


