-- vim.keymap.set(mode, lhs, rhs, options,{noremap = true})

-- set s key to Window moving.
vim.keymap.set('n', 's', '<NOP>',{noremap = true})
-- set s+hjkl move to other window
vim.keymap.set('n', 'sj', '<C-w>j',{noremap = true})
vim.keymap.set('n', 'sk', '<C-w>k',{noremap = true})
vim.keymap.set('n', 'sl', '<C-w>l',{noremap = true})
vim.keymap.set('n', 'sh', '<C-w>h',{noremap = true})
-- set s+sv separate window
vim.keymap.set('n', 'ss', '<C-w>s',{noremap = true})
vim.keymap.set('n', 'sv', '<C-w>v',{noremap = true})
-- set s+nptT move tab
vim.keymap.set('n', 'sn', 'gt',{noremap = true})
vim.keymap.set('n', 'sp', 'gT',{noremap = true})
vim.keymap.set('n', 'st', ':<C-u>tabnew<CR>',{noremap = true})
-- set s+qQ kill buffer or close window
vim.keymap.set('n', 'sq', ':<C-u>q<CR>',{noremap = true})
vim.keymap.set('n', 'sb', ':<C-u>bd!<CR>',{noremap = true})

-- set ESC+ESC Clear Search hilight
vim.keymap.set('n', '<ESC><ESC>', ':<C-u>set nohlsearch!<CR>',{noremap = true})

