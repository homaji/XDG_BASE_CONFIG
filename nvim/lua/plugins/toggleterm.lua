return {
    'akinsho/toggleterm.nvim',
    config = true,
    cmd = 'ToggleTerm',
    keys = {
        { "<C-\\>", ":ToggleTerm<CR>"},
    },
    opts = {
        direction = "float",
        float_opts = {border = 'curved'},
        shell = "powershell",
    }
}

