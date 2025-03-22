require("telescope").setup {
    defaults = {
        sorting_strategy = "ascending",
    },
    extensions = {
        file_browser = {
            hijack_netrw = true,
        },
    },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

require("telescope").load_extension "file_browser"
