
local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

-- 1. LSP Server management

require('mason').setup()
require("mason-lspconfig").setup()
require('mason-lspconfig').setup_handlers{
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach
    }
  end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )
}
