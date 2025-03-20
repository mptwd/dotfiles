vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- pickup line and move them down or up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')

vim.keymap.set('n', '<leader>x', ':!chmod +x %<CR>')
vim.keymap.set('n', '<C-f>', ':silent !tmux neww tmux-sessionizer<CR>')
