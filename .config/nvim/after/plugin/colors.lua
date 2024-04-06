
function ColorMyColor(color)
    color = color or "melange"
vim.cmd.colorscheme(color)
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
ColorMyColor()


--vim.cmd.colorscheme 'melange'


