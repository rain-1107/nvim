vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>c", vim.cmd.term)
vim.keymap.set("n", "<leader>a", "]]ggvG<End>")

vim.keymap.set("i", "<C-c>", "<Esc>")

--[[
vim.api.nvim_set_keymap('v', '<leader>gc', ':GPTModelsCode<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':GPTModelsChat<CR>', { noremap = true })
]]--

-- Language shortcuts
-- Python
vim.keymap.set("n", "<leader>pym", "iif __name__ == '__main__':<Enter>")

-- HTML
vim.keymap.set("n", "<leader>h5", [=[i<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body> 
</body>
</html><Esc>v]]gg=]=])
