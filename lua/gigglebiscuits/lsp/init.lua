require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "clangd" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup {
  capabilities = capabilities
}
