return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "markdown",
        "markdown_inline",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "latex",
        "bibtex",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
