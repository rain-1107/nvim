vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
if vim.fn.has("win64") == 1 or vim.fn.has("win32") == 0 then 
    vim.opt.undodir = '$HOME/nvim-data/undo'
else
    vim.opt.undodir = '~/nvim-data/undo'
end
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"

vim.g.mapleader = " "
