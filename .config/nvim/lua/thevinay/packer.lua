-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  --colorscheme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

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
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use{ "mfussenegger/nvim-jdtls" }
use {'echasnovski/mini.nvim'}
use {'m4xshen/autoclose.nvim'}
--colorscheme
use {"EdenEast/nightfox.nvim"} -- Packer
--on highlight gives rainbow color
use {'luisiacc/gruvbox-baby'}
use {'morhetz/gruvbox'}

use {'andweeb/presence.nvim'}
use {"numToStr/FTerm.nvim"}

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

--markdown preview
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

--for tabs above
  use {'nanozuki/tabby.nvim'}

--status bar
use {'freddiehaddad/feline.nvim'}

--icons support
use {'nvim-tree/nvim-web-devicons'}
--latex
--use {'lervag/vimtex'}

--pandoc vim plugin
use {
  'aspeddro/pandoc.nvim',
  config = function()
    require'pandoc'.setup()
  end
}
require("packer").startup(function()
  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })
end)
use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.integrations.nvim-cmp"] = {},
                ["core.ui.calendar"] = {},

                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/Me/neorg_notes/",
                            brain_storm= "~/Me/neorg_notes/brain_storm/",
                        },
                    },
                },
                ["core.export"] = {},
                ["core.summary"] = {},
["core.export.markdown"] = {
config = {
extension = "md"
},
},
["core.completion"] = {
    config = {
        engine = "nvim-cmp"
    }
}

            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}



end)
