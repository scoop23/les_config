-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.notify = require("notify")

vim.g.netrw_list_hide = ""
-- require("kanagawa").load("dragon")
-- require("solarized-osaka").load()
-- require("smear_cursor").setup()
-- require("cyberpunk").load()
require("catppuccin").setup({
  flavour = "frappe",
})
vim.cmd.colorscheme("catppuccin")
-- vim.opt.shell = "C:\\Program Files\\Git\\bin\\bash.exe"
-- vim.opt.shellcmdflag = "-c"
-- vim.opt.shellquote = ""
-- vim.opt.shellxquote = ""

if vim.g.neovide then
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h:10"
  vim.g.snacks_explorer_root = true
  vim.g.neovide_cursor_animation_length = 0.2
end

vim.fn.mkdir(vim.fn.stdpath("state") .. "/swap", "p")
vim.opt.directory = vim.fn.stdpath("state") .. "/swap//"

-- basically just delete buffers that got left behind.
vim.api.nvim_create_user_command("CleanSwaps", function()
  local swapdir = vim.fn.stdpath("state") .. "/swap"
  local files = vim.fn.glob(swapdir .. "/*", false, true)
  if #files == 0 then
    vim.notify("No swap files found.")
    return
  end

  for _, file in ipairs(files) do
    vim.fn.delete(file)
  end

  vim.notify("Delete " .. #files .. " swap files")
end, {})
