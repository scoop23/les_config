return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "python",
      "html",
      "css",
      "matlab",
      "javascript",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "java",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
      disable = { "javascript" },
    },
  },
}
