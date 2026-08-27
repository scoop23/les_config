local lspconfig = require('lspconfig')

lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly", -- Reduces lag on large Django projects
      },
    },
  },
 root_dir = lspconfig.util.root_pattern("pyrightconfig.json", "manage.py", ".git"),
})
