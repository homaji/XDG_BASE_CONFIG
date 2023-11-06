local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

require("toggleterm").setup{
    function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    -- set up keymaps
    open_mapping = [[<c-\>]],
    -- open type
    direction = 'float', -- vertical | horizontal | tab | float
    -- option of float window
    float_opts ={
        border = 'curved' -- single | double | shadow | curve
    },
}
