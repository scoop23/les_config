-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  guifont = "SauceCodePro NFP:h11", -- SauceCodePro NFP:16, IosevkaTerm NFM:h18:SemiBold, ComicMono Nerd Font:h15, JetBrainsMono_Nerd_Font:h12, ComicShanns Nerd Font:h14
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.opt.shada = "'100,<50,s10,h" -- remember '100 recent files, <50 remember 50 lines, s10 save upto 10kb, h dont save "help" buffers.
--
-- vim.api.create_autocmd("VimEnter" , {
-- })
