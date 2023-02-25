-- Mis atajos
local map = vim.keymap.set

map ('n', '<C-x>', ':w<CR>')
map ("n", "<C-q>", ":q<CR>")
map ("n", "<C-f>", ":Explore<CR>")
map ("n", "<C-r>", ":so<CR>")
map ("n", "<C-m>", ":Mason<CR>")
map ("n", "<C-p>", ":PackerInstall<CR>")
map ("i", "jj", "<ESC>")
