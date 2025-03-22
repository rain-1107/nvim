vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>pv",
    function() require("telescope").extensions.file_browser.file_browser { path = "%:p:h", select_buffer = true, hidden = true, no_ignore = false } end)
vim.keymap.set("n", "<leader>c", vim.cmd.term)
vim.keymap.set("n", "<leader>nc", "<C-w>s <C-w>w <C-c> :term<Enter>")
vim.keymap.set("n", "<leader>tt", ":TransparentToggle<Enter>")

-- Hightlights all (Ctrl+a)
vim.keymap.set("n", "<C-a>", "gg<Home>vG<End>")

-- So that lsp hints appear
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Language shortcuts
-- Go
vim.keymap.set("n", "<leader>ge", [[iif err != nil {}<Esc>i<Enter><Enter><Esc>ki<Tab>]])

-- Python
vim.keymap.set(
    "n",
    "<leader>pym",
    "odef main() -> None:<Enter>...<Enter><Enter><Backspace>if __name__ == '__main__':<Enter>main()<Esc>kkk"
)

-- HTML
vim.keymap.set(
    "n",
    "<leader>h5",
    [=[i<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
</body>
</html><Esc>v]]gg=]=]
)
