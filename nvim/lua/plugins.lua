vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
   use{ 'nvim-lua/plenary.nvim' }
   use{ 'kyazdani42/nvim-web-devicons', opt = true}
   use{ 'wbthomason/packer.nvim', opt = true}
   use{ 'nvim-telescope/telescope.nvim' }
   use{ 'nvim-lualine/lualine.nvim' }
   use{ 'tkmpypy/chowcho.nvim' }
   use{ 'rebelot/kanagawa.nvim' }
   use{ 'nathom/filetype.nvim' }
   use{ 'obaland/vfiler.vim' }
   use{ 'goolord/alpha-nvim' }
   use{ 'TimUntersberger/neogit' } -- git用
   use{ 'renerocksai/telekasten.nvim' } -- zettelkasten type memo
   use{ 'akinsho/toggleterm.nvim', tag = 'v2.*', config = function() require("toggleterm").setup() end } -- terminal呼び出し
   use{ 'nvim-treesitter/nvim-treesitter'}
   use{ 'nvim-orgmode/orgmode'}
end)

