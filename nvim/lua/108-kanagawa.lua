local status_ok, treesitter = pcall(require, "kanagawa")
if not status_ok then
    return
end

-- ColorScheme
vim.cmd('colorscheme kanagawa')
