vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
   use{ 'wbthomason/packer.nvim', opt = true}
   use{
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim'}
    }
    use{
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true}
    }
    use{'tkmpypy/chowcho.nvim'}
    use{'rebelot/kanagawa.nvim'}
end)

