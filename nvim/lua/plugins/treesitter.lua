return{
    'nvim-treesitter/nvim-treesitter',
    config = true,
    opts ={
        highlight = {
            enable = true,
            disable = {
                'C',
                'C++',
            },
        },
        indent ={
            enable = true,
        },
    }
}
