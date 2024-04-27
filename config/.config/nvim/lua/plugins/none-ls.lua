return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black, -- black and isort are formatting for python
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.prettier, -- prettier and eslint are for javascript
        null_ls.builtins.diagnostics.eslint_d,
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}
