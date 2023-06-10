vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
   use{ 'nvim-lua/plenary.nvim' }
   use{ 'nvim-lua/popup.nvim'}
   use{ 'kyazdani42/nvim-web-devicons', opt = true}
   use{ 'wbthomason/packer.nvim', opt = true}
   use{ 'nvim-telescope/telescope.nvim' }
   use{ 'nvim-telescope/telescope-media-files.nvim'}
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
   use{ 'neovim/nvim-lspconfig'}  -- For LSP
   use{ 'williamboman/mason.nvim'} -- For LSP Server Install
   use{ 'williamboman/mason-lspconfig.nvim'} -- For LSP Server Config

   use{ 'hrsh7th/nvim-cmp'}
   use{ 'hrsh7th/cmp-nvim-lsp'}
   use{ 'hrsh7th/cmp-vsnip'}
   use{ 'hrsh7th/cmp-buffer'}

   use{ 'adelarsq/image_preview.nvim' }
   use{ 'rbtnn/vim-ambiwidth' }
   
end)

