
local status_ok, lualaine = pcall(require, "gkeep")
if not status_ok then
    return
end


vim.g.gkeep_icons={
    email= " ",
    home= "",
    label= "",
    list= "✓",
    lock= "",
    neorg= "",
    note= "📝",
    pinned= "",
    search= "",
    trashed= "",
    archived= "",
    diff= ""
}
