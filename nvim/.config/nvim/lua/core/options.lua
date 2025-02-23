local map = vim.keymap.set
local set = vim.opt
local defaults = { noremap = true, silent = true }

-- Tabs settings
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.softtabstop = 2

-- Map jj to esc
map('i', 'jk', '<esc>l', defaults)

-- Map leader to <Space>
map("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- Using <leader> + number (1, 2, ... 9) to switch tab
for i=1,9,1
do
  map('n', '<leader>'..i, i.."gt", {})
end
map('n', '<leader>0', ":tablast<cr>", {})

-- map for quick quit, save files using leader key
---- Normal mode
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>a', ':wqa<CR>')
map('n', '<Leader>x', ':wq<CR>')
