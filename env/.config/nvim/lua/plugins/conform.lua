return {
  "stevearc/conform.nvim",
  optional = true,
  config = function ()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylelua" },
        go = { "goimports", "gofmt" },
        rust = { "rustfmt", lsp_format = "fallback" },
        python = { "isort", "black" },
        tex = { "latexindent" },

        -- To run on all filetypes.
        ["*"] = { "codespell" },
        -- To run on filetypes that don't have formatter setup.
        ["_"] = { "trim_whitespace" },
      },

      default_format_opts = {
        lsp_format = "fallback",
      },
    })
  end,
}
