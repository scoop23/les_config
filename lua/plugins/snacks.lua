return {
  {
    "folke/snacks.nvim",
    opts = {
      animate = {
        enabled = true,
        duration = 10,
        easing = "linear",
        fps = 144,
      },
      notifier = {
        enabled = false,
        timeout = 1000,
        width = { min = 40, max = 80 },
        height = { min = 1, max = 10 },
        margin = { top = 1, right = 1, bottom = 0 },
        padding = true,
        sort = { "level", "added" },
        level = vim.log.levels.INFO,
        icons = {
          error = " ",
          warn = " ",
          info = "🥱",
          debug = " ",
          trace = " ",
        },
        style = "fancy",
      },
      styles = {
        notification = {
          wo = { winblend = 5 },
          bo = {},
        },
        notification_history = {
          wo = { winblend = 5 },
        },
      },
    },
  },
}
