-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,}
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  --my config
    use {
     "nvim-neorg/neorg",
    -- config = function()
    --     require('neorg').setup {
    --         load = {
    --             ["core.defaults"] = {}, -- Loads default behaviour
    --             ["core.concealer"] = {}, -- Adds pretty icons to your documents
    --             ["core.dirman"] = { -- Manages Neorg workspaces
    --                 config = {
    --                     workspaces = {
    --                         notes = "~/Me/neorg_notes",
    --                     },
    --                 },
    --             },
    --         },
    --     }
    -- end,
    --  run = ":Neorg sync-parsers",
    -- requires = "nvim-lua/plenary.nvim",
}
--File Explorer
  use{
    "stevearc/oil.nvim",
  }
--colorscheme
use {"savq/melange-nvim"}

--vim be good
use {'ThePrimeagen/vim-be-good'}

-- for pretty input
    use {'stevearc/dressing.nvim'}
--browser
use({
    "lalitmee/browse.nvim",
    requires = { "nvim-telescope/telescope.nvim" },
})

--java
use 'mfussenegger/nvim-jdtls'

-- prettier
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')

-- comments
use {
    'numToStr/Comment.nvim',
}

-- markdown
use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

--vimtex
use 'lervag/vimtex'

end)
