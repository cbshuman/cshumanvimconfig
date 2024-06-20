require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 
    "clangd",
    "lua_ls"
  }
})

local on_attach = function(_,_)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_references, {})
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup {
  capabilities = capabilities,
  on_attach = on_attach
}

require("lspconfig").lua_ls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}
