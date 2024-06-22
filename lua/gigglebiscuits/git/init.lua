require("blame").setup()

local neogit = require('neogit')
neogit.setup {}

vim.keymap.set('n','<leader>b', ':BlameToggle<CR>')
