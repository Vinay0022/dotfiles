-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

--formatter
use {"jose-elias-alvarez/null-ls.nvim",
config = "require('null-ls-config')"
}

--comment 
use {"terrortylor/nvim-comment"}

--markdown previewr inside neovim 
use {"ellisonleao/glow.nvim"}



  --themes
  use { "morhetz/gruvbox" }
  use { "luisiacc/gruvbox-baby" }
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  
  --Competitive Programming
  use {
    'xeluxee/competitest.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function() require'competitest'.setup() end
}
  
  use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

 use ('ThePrimeagen/vim-be-good')

 use ('andweeb/presence.nvim')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
use {'lervag/vimtex'}
use{ 'rcarriga/nvim-dap-ui'}
use {'mfussenegger/nvim-dap-python'}
  use {'mfussenegger/nvim-dap'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'nvim-telescope/telescope-dap.nvim'}


  end)
