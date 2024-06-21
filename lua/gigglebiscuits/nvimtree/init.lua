-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


local function on_attach(bufnr)
    local api = require("nvim-tree.api")
    local FloatPreview = require("float-preview")

    FloatPreview.attach_nvimtree(bufnr)
end


-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require("lsp-file-operations").setup()

vim.keymap.set('n','n', ':NvimTreeFindFileToggle<CR>')
