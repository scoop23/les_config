return {
  {
    "neovim/nvim-lspconfig",

    config = function()
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "openFilesOnly",
            },
          },
        },

        root_markers = {
          "pyrightconfig.json",
          "manage.py",
          ".git",
        },
      })

      vim.lsp.enable("pyright")
      vim.lsp.enable("vtsls")
      vim.keymap.set("n", "gl", vim.diagnostic.open_float, {
        desc = "Show diagnostic",
      })
    end,
  },
}
-- vim.lsp.config("pyright", {
--     settings = {
--         python = {
--             analysis = {
--                 autoSearchPaths = true,
--                 useLibraryCodeForTypes = true,
--                 diagnosticMode = "openFilesOnly",
--             },
--         },
--     },
-- })
--
-- vim.lsp.enable("pyright")
