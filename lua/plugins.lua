vim.cmd [[packadd packer.nvim]]

require 'packer'.startup(function()
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'}}
    }
    use {'wbthomason/packer.nvim', opt = true}
end)
