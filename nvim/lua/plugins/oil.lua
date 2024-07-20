return{
    'stevearc/oil.nvim',
    dependencies = {"nvim-tree/nvim-web-devicons"},
    opts = {
        default_file_explorer = true,
        columns = {
            "icon",
            "size",
            "mtime",
        },
        keymaps = {
            ["g?"] = "actions.show_help",
            ["<CR>"] = "actions.select",
            ["<C-s>"] = { "actions.select", opts = { vertical =true }, desc = "Open the entry in a vertical split" },
            ["<C-h>"] = { "actions.select", opts = { horizontal =true }, desc = "Open the entry in a horizontal split" },
            ["<C-t>"] = { "actions.select", opts = { tab =true }, desc = "Open the entry in tab" },
            ["<C-p>"] = "actions.preview",
            ["<C-c>"] = "actions.close",
            ["<C-l>"] = "actions.refresh",
            ["-"] = "actions.parent",
            ["_"] = "actions.open_cwd",
            ["`"] = "actions.cd",
            ["gs"] = "actions.change_sort",
            ["gx"] = "actions.open_external",
        },
    },
}
