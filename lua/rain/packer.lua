vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

packer.init({max_jobs=16, })

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --[[ 
    use({'navarasu/onedark.nvim',
    config = function()
        require('onedark').setup {
            style = 'cool'
        }
        require('onedark').load()
    end
    }) 
    ]]--
    use({'craftzdog/solarized-osaka.nvim',
    config=function()
        require("solarized-osaka").setup = {}
        require("solarized-osaka").load()
    end
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use 'nvim-tree/nvim-web-devicons'
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'
    use({'lukas-reineke/indent-blankline.nvim',
    config = function()
        require("ibl").setup()
    end})
end)
