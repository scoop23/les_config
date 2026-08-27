return {
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              venvPath = ".",
              venv = "venv",
            },
          },
        },
      },
    },
  },
}
