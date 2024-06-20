require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 
    "clangd",
    "lua-language-server"
  }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup {
  capabilities = capabilities
}

--require("lspconfig").lua-language-server.setup{
--  capabilities = capabilities
--}
