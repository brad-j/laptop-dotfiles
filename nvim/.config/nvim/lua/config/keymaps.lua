local map = vim.keymap.set

-- Map jk to esc
map('i', 'jk', '<esc>l', defaults)

-- map for quick quit, save files using leader key
---- Normal mode
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>a', ':wqa<CR>')
map('n', '<Leader>x', ':wq<CR>')

