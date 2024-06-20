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
  'nvim-tree/nvim-tree.lua',  requires = { 'nvim-tree/nvim-web-devicons' },
	'nvim-telescope/telescope.nvim', tag ='0.1.6',
  	'VonHeikemen/lsp-zero.nvim',branch = 'v3.x', requires = {
  		{'williamboman/mason.nvim'},
	  	{'williamboman/mason-lspconfig.nvim'},
	  	{'neovim/nvim-lspconfig'},
	  	{'hrsh7th/nvim-cmp'},
    	{'hrsh7th/cmp-nvim-lsp'},
    	{'L3MON4D3/LuaSnip'}
 	 },
	'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
	'folke/tokyonight.nvim', lazy = false, priority = 100, opts ={},
}


