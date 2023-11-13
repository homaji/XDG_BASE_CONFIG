return{
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim', 
    },
    keys ={
        {'sf', ':Telescope find_files<CR>'},
    },

}
