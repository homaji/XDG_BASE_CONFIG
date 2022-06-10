-- vim.api.nvim_set_keymap(mode, lhs, rhs, options,{noremap = true})

-- set s key to Window moving.
vim.api.nvim_set_keymap('n', 's', '<NOP>',{noremap = true})
-- set s+hjkl move to other window
vim.api.nvim_set_keymap('n', 'sj', '<C-w>j',{noremap = true})
vim.api.nvim_set_keymap('n', 'sk', '<C-w>k',{noremap = true})
vim.api.nvim_set_keymap('n', 'sl', '<C-w>l',{noremap = true})
vim.api.nvim_set_keymap('n', 'sh', '<C-w>h',{noremap = true})
-- set s+sv separate window
vim.api.nvim_set_keymap('n', 'ss', '<C-w>s',{noremap = true})
vim.api.nvim_set_keymap('n', 'sv', '<C-w>v',{noremap = true})
-- set s+nptT move tab
vim.api.nvim_set_keymap('n', 'sn', 'gt',{noremap = true})
vim.api.nvim_set_keymap('n', 'sp', 'gT',{noremap = true})
vim.api.nvim_set_keymap('n', 'st', ':<C-u>tabnew<CR>',{noremap = true})
-- set s+qQ kill buffer or close window
vim.api.nvim_set_keymap('n', 'sq', ':<C-u>q<CR>',{noremap = true})
vim.api.nvim_set_keymap('n', 'sb', ':<C-u>bd!<CR>',{noremap = true})

-- set ESC+ESC Clear Search hilight
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':<C-u>set nohlsearch!<CR>',{noremap = true})

