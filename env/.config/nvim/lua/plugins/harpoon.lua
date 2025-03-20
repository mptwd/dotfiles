return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
  },
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon"):list():append()
      end,
      desc = "Harpoon file",
    },
    {
      "<C-e>",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon quick menu",
    },
    {
      "<leader>h",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "Harpoon to file 1",
    },
    {
      "<leader>j",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon to file 2",
    },
    {
      "<leader>k",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon to file 3",
    },
    {
      "<leader>l",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon to file 4",
    },
  },
}
