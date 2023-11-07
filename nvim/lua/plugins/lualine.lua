return{
    'nvim-lualine/lualine.nvim',
    event = { "BufReadPre", "BufNewFile"},
    config = function()
        local lualine = require('lualine')

        local config = {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {},
                always_divide_middle = true,
                globalstatus = true,
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'},
            },
            tabline = {},
            extensions = {},
        }
    -- don't forget to initialize lualine
    lualine.setup(config)
    end
}
