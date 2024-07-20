return{
    "is0n/jaq-nvim",
    config = function()
        require("jaq-nvim").setup({
            cmds = {
                internal = {
                    lua = "luafile %",
                    vim = "source %",
                },
                external = {
                    python = "python %",
                    sh = "sh %",
                }
            },
        })
    end,
}
