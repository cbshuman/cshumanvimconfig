local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
	'nvim-lua/plenary.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'JMarkin/nvim-tree.lua-float-preview',
  "antosha417/nvim-lsp-file-operations", requires =
      {"nvim-lua/plenary.nvim","nvim-tree/nvim-tree.lua"},
	'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'nvim-telescope/telescope.nvim', tag ='0.1.6',
	'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
	'folke/tokyonight.nvim', lazy = false, priority = 100, opts ={},
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip'
}
