return{
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim', 
        'BurntSushi/ripgrep',
        'nvim-telescope/telescope-media-files.nvim',
    },
    keys ={
        {'sf', ':Telescope find_files<CR>'},
    },
      config = function()
          local telescope = require("telescope")
          local actions = require("telescope.actions")

          telescope.setup({
              defaults = {
                  mappings = {
                      i = {
                          ["<C-k>"] = actions.move_selection_previous, --move to prev result
                          ["<C-j>"] = actions.move_selection_next, --move tonext result
                          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                      }
                  }
              }
          })

          telescope.load_extension("media_files");

      end
}
