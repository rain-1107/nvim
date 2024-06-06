local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'wbthomason/packer.nvim',
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    {'rebelot/kanagawa.nvim'},
    {'nvim-treesitter/nvim-treesitter', build=':TSUpdate',},
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'famiu/feline.nvim',
    { "diegoulloao/neofusion.nvim", priority = 1000 , config = true, opts = ... },
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    'tpope/vim-fugitive',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    'nvim-tree/nvim-web-devicons',
    {'lewis6991/gitsigns.nvim'},
    'romgrk/barbar.nvim',
    'lewis6991/gitsigns.nvim',
    {'lukas-reineke/indent-blankline.nvim',
    config = function()
        require("ibl").setup()
    end},
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
            require("chatgpt").setup()
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim"
        }
    }
}

local opt = {}

require("lazy").setup(plugins, opt)
