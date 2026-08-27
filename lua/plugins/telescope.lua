return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    depedencies = {
      "nvim-lua/planetary.nvim",
    },
    module = "telescope",
    lazy = false,
    config = function()
      require("telescope").setup({})

      local builtin = require("telescope.builtin")
      -- vim.keymap.set("n", "<leader>fn", builtin.git_files, {})
      -- vim.keymap.set("n", "<leader>fr", builtin.live_grep, {})
      -- vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      -- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      -- vim.keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")
    end,
  },
}
