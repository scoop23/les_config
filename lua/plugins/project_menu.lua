return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup({
      detection_methods = { "pattern", "lsp" },
      patterns = { ".git", "package.json", "Makefile", "src", "Pipfile.lock", "Makefile", "CMakeLists.txt" },
    })
  end,
}
