local status_ok, treesitter = pcall(require, "treesitter")
if not status_ok then
    return
end


-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {

    highlight = {
        enable = true,
        disable = {
            'c',
            'c++',
        },
        additional_vim_regex_highlighting = {'org'},
    },
    ensure_installed = {'org'},
}
