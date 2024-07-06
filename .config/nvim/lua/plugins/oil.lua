return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {{"<leader>pv","<cmd>Oil<cr>"}},
  config = function()
	  require("oil").setup()
  end,
}
