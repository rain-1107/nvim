vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.so = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

-- Gets OSName found in: https://gist.github.com/Zbizu/43df621b3cd0dc460a76f7fe5aa87f30
local osname
local fh, err = assert(io.popen("uname -o 2>/dev/null", "r"))
if fh then
    osname = fh:read()
    if not osname then osname = "Windows" end
end

if osname == 'GNU/Linux' then
    print("Using Linux config")
    vim.g.undotree_DiffCommand = 'diff'
    vim.opt.undodir = vim.fn.expand('$HOME/.config/vim-data/undo')
elseif osname == "Windows" then
    print("Using Windows config")
    vim.g.undotree_DiffCommand = 'FC'
    vim.opt.undodir = vim.fn.expand('$HOME/AppData/Local/vim-data/undo')
else
    print("Unknown OS")
end

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"

