-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                          , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- https://github.com/rebelot/kanagawa.nvim
    -- use { "rebelot/kanagawa.nvim" }

    -- https://github.com/nvim-treesitter/nvim-treesitter
    use { "nvim-treesitter/nvim-treesitter" }

    -- https://github.com/nvim-tree/nvim-tree.lua
    use {
        'nvim-tree/nvim-tree.lua',
        -- requires = {
        --     'nvim-tree/nvim-web-devicons', -- optional, for file icons
        -- },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- https://github.com/VonHeikemen/lsp-zero.nvim
    use {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',

        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use { 'preservim/tagbar' }
    use ({
        'f-person/git-blame.nvim',
        event = "BufRead",
        config = function()
            vim.g.gitblame_enabled = 0
        end,
    })

    -- https://github.com/voldikss/vim-floaterm
    use { 'voldikss/vim-floaterm' }
    use { 'fatih/vim-go' }

    -- https://github.com/lewis6991/gitsigns.nvim
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        'akinsho/bufferline.nvim', tag = "*",
        -- requires = {
        --     'nvim-tree/nvim-web-devicons'
        -- }
    }

    use {
        'nvim-lualine/lualine.nvim',
        -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use  {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }

    use { "EdenEast/nightfox.nvim" }

    -- use {'Mofiqul/vscode.nvim'}

    use {"nvim-treesitter/nvim-treesitter-context"}

    -- use {
    --     "nvim-neorg/neorg",
    --     requires = {
    --         "nvim-lua/plenary.nvim"
    --     }
    -- }

    -- use { "kylechui/nvim-surround" }
    use { "ggandor/leap.nvim" }

    -- https://github.com/vonheikemen/fine-cmdline.nvim
    -- use {
    --     'VonHeikemen/fine-cmdline.nvim',
    --     requires = {
    --         {'MunifTanjim/nui.nvim'}
    --     }
    -- }
end)
