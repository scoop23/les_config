-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any Additional keymaps here

-- vim.keymap.set("n", "<leader>p", function()
--   require("fzf-lua").files({
--     cwd = require("project_nvim.project").get_project_root() or vim.loop.cwd(),
--     fd_opts = "--hidden --follow --exclude .git",
--   })
-- end, { desc = "Open Project Files" })
vim.keymap.set("n", "<leader>PP", function()
  require("fzf-lua").files({
    cwd = vim.fn.stdpath("data") .. "/project_nvim/project_history", -- path to projects history
    fd_opts = "--type d", -- show directories
  })
end, { desc = "All Projects" })

vim.keymap.set("n", "<leader>m", function()
  vim.cmd("Alpha")
end, { desc = "Open Main Menu / Dashboard" })
