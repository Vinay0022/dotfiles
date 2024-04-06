vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"

-- my set
vim.opt.conceallevel = 2
-- Automatic compilation on save
vim.cmd([[autocmd FileType tex nnoremap <buffer> <silent> <Leader>ll :VimtexCompile<CR>]])

-- Automatic opening of PDF
vim.cmd([[autocmd FileType tex nnoremap <buffer> <silent> <Leader>lv :VimtexView<CR>]])

-- Use Zathura as the PDF viewer for Vimtex
vim.g.vimtex_view_general_viewer = '/usr/bin/zathura'


vim.g.tex_flavor = 'latex'

