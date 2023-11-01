local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

require("telescope").setup {
  defaults = {
    preview = {
      mime_hook = function(filepath, bufnr, opts)
        local is_image = function(filepath)
          local image_extensions = {'png','jpg'}   -- Supported image formats
          local split_path = vim.split(filepath:lower(), '.', {plain=true})
          local extension = split_path[#split_path]
          return vim.tbl_contains(image_extensions, extension)
        end
        if is_image(filepath) then
          local term = vim.api.nvim_open_term(bufnr, {})
          local function send_output(_, data, _ )
            for _, d in ipairs(data) do
              vim.api.nvim_chan_send(term, d..'\r\n')
            end
          end
          vim.fn.jobstart(
            {
              'silent !wezterm cli split-pane -- powershell wezterm imgcat' , filepath  -- Terminal image viewer command
            }, 
            {on_stdout=send_output, stdout_buffered=true, pty=true})
        else
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
        end
      end
    },
  },
  extensions = {
    media_files = {
        -- filetype whitelist
        -- defaults to  {"png", "jpg", "mp4", "webm", "pdf"}
        filetypes = {"png", "jpg", "jpeg"},
        
    }
  },
}

require('telescope').load_extension('media_files')
