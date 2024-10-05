require("conform").setup({
    formatters_by_ft = {
        cpp = { lsp_format = "clangd" },
        lua = { lsp_format = "lua_ls" },
        python = { lsp_format = "pyright" },
        rust = { lsp_format = "rust_analyzer" },
        javascript = {},
    },
})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})
