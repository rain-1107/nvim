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
local on_windows = vim.fn.has("win64") or vim.fn.has("win32")
if not on_windows then
    vim.opt.undodir = '~/nvim-data/undo'
else
    vim.g.undotree_DiffCommand = 'FC'
    vim.opt.undodir = '%userprofile%/AppData/Local/nvim-data'
end
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"

