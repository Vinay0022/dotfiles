 function ColorMyPencils(color)
color = color or "rose-pine"
	 vim.cmd.colorscheme(color)

	 vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
	 vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
 end

 
 function GRUV(color)
color = color or "gruvbox"
	 vim.cmd.colorscheme(color)

	 vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
	 vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
 end

 function GRUV_BABY(color)
color = color or "gruvbox-baby"
	 vim.cmd.colorscheme(color)

	 vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
	 vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
 end
 
 ColorMyPencils()
 GRUV()
 GRUV_BABY()
