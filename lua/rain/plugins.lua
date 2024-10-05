local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "wbthomason/packer.nvim",
    { "mfussenegger/nvim-dap" },
    "lambdalisue/vim-suda",
    {
        "stevearc/conform.nvim",
        opts = {},
    },
    "xiyaowong/transparent.nvim",
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("alpha").setup(require("alpha.themes.startify").config)
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    { "catppuccin/nvim",      name = "catppuccin", priority = 1000 },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    "theprimeagen/harpoon",
    "mbbill/undotree",
    { "diegoulloao/neofusion.nvim",      priority = 1000,    config = true, opts = ... },
    "tpope/vim-fugitive",
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    },
    { "kevinhwang91/nvim-hlslens" },
    "nvim-tree/nvim-web-devicons",
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    { "lewis6991/gitsigns.nvim" },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup()
        end,
    },
}

local opt = {}

require("lazy").setup(plugins, opt)
