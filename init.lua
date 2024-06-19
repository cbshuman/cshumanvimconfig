require("gigglebiscuits")

vim.o.number = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.wrap = false

vim.o.termguicolors = true

vim.cmd[[colorscheme tokyonight]]

color = color or "tokyonight"
vim.cmd.colorscheme(color)

vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
