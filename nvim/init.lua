-- luaで作成

require('001_core')
require('002_keymap')
require('050_fvim')
require('plugins')
require('101-lualine')
require('102-chowcho')
require('103-changelog')
require('104-alpha')
require('105-toggleterm')
require('106-orgmode')
require('107-treesitter')
require('108-kanagawa')
require('109-image_preview')
require('110-telescope')

require('201-mason')

vim.cmd('cd ~')
