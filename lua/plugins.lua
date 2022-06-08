vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
   use{ 'wbthomason/packer.nvim', opt = true}
   use{
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim'}
    }

end)

