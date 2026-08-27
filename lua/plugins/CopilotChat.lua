return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "nvim-lua/plenary.nvim",
  },
  opts = function()
    local user = vim.env.USER or vim.env.USERNAME or "User"
    user = user:sub(1, 1):upper() .. user:sub(2)
    return {
      auto_insert_mode = true,
      headers = {
        user = "  " .. user .. " ",
        assistant = "  Copilot ",
        tool = "󰊳  Tool ",
      },
      window = {
        width = 0.4,
      },
    }
  end,
}
