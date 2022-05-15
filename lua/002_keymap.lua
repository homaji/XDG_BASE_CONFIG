-- vim.api.nvim_set_keymap(mode, lhs, rhs, options)


vim.keymap.set('n', 's', '<NOP>')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')
vim.keymap.set('n', 'sh', '<C-w>h')

vim.keymap.set('n', '<ESC><ESC>', ':<C-u>set nohlsearch!<CR>')
