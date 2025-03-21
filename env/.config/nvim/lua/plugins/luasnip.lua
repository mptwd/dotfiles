return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },

  config = function ()
    local luasnip_loader = require("luasnip.loaders.from_vscode")
    luasnip_loader.lazy_load({ paths = { "./snippet" }})
    luasnip_loader.lazy_load()
  end,
}
