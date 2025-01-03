local vim=vim
---------------------------------- lazy start ------------------------------------
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

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter" },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-path'},
    {'L3MON4D3/LuaSnip'},
    { 'preservim/tagbar' },
    { 'f-person/git-blame.nvim' },

    -- https://github.com/voldikss/vim-floaterm
    { 'voldikss/vim-floaterm' },
    { 'fatih/vim-go' },

    -- https://github.com/lewis6991/gitsigns.nvim
    {'lewis6991/gitsigns.nvim' },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {'nvim-lualine/lualine.nvim'},
    {"EdenEast/nightfox.nvim" },
    {"nvim-treesitter/nvim-treesitter-context"},
    {
        "OXY2DEV/markview.nvim",
        lazy = false,      -- Recommended
        -- ft = "markdown" -- If you decide to lazy-load anyway

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        }
    },
    -- {
    --     "lukas-reineke/indent-blankline.nvim",
    --     main = "ibl",
    --     ---@module "ibl"
    --     ---@type ibl.config
    --     opts = {},
    -- },
    -- {
    --     "shellRaining/hlchunk.nvim",
    --     event = { "BufReadPre", "BufNewFile" },
    --     config = function()
    --         require("hlchunk").setup({
    --             chunk = {
    --                 enable = false
    --                 -- ...
    --             },
    --             indent = {
    --                 enable = true,
    --                 chars = {
    --                     "│",
    --                     -- "¦",
    --                     -- "┆",
    --                     -- "┊",
    --                 },
    --                 -- ...
    --             }
    --         })
    --     end
    -- },
   -- {
   --  "folke/noice.nvim",
   --  event = "VeryLazy",
   --  opts = {
   --    -- add any options here
   --    messages = { view = "mini", view_warn = "mini" },
   --    routes = {
   --      { filter = { event = "notify", find = "No information available" }, opts = { skip = true } },
   --    },
   --  },
   --  dependencies = {
   --    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
   --    "MunifTanjim/nui.nvim",
   --    -- OPTIONAL:
   --    --   `nvim-notify` is only needed, if you want to use the notification view.
   --    --   If not available, we use `mini` as the fallback
   --    "rcarriga/nvim-notify",
   --    }
  -- },
  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^5', -- Recommended
  --   lazy = false, -- This plugin is already lazy
  -- }
    {
        "apple/pkl-neovim",
        lazy = true,
        ft = "pkl",
        dependencies = {
            {
                "nvim-treesitter/nvim-treesitter",
                build = function(_)
                    vim.cmd("TSUpdate")
                end,
            },
            "L3MON4D3/LuaSnip",
        },
        build = function()
            require('pkl-neovim.internal').init()

            -- Set up syntax highlighting.
            vim.cmd("TSInstall! pkl")
        end,
        config = function()
            -- Set up snippets.
            require("luasnip.loaders.from_snipmate").lazy_load()
        end,
    },
    {
        "shaunsingh/nord.nvim"
    },
    {
        "ggandor/leap.nvim",
        config = function()
            -- require('leap').create_default_mappings()
        end,
    }

})

---------------------------------- lazy end ------------------------------------

-- https://github.com/ellisonleao/gruvbox.nvim
vim.o.background = "dark" -- "dark" or "light" for light mode

vim.cmd('abb idbg fmt.Printf(\"debug: %+v\\n\",')
vim.cmd('abb ierr if err != nil {')
vim.cmd('abb iuid 3779255524')
vim.cmd([[inoreabbrev itime <c-r>=strftime("%Y/%m/%d %H:%M:%S")<CR>]])
vim.cmd([[inoreabbrev idate <c-r>=strftime("%Y_%m_%d")<CR>]])
vim.cmd([[inoreabbrev icmt // Copyright(C) 2023 Baidu Inc. All Rights Reserved.<CR>
            \//<CR>
            \// Author  tao (yangtao23@baidu.com)<CR>
            \// Date    <c-r>=strftime("%Y/%m/%d %H:%M:%S")<CR>]])

-- https://github.com/banga/git-split-diffs

vim.keymap.set("n", "<leader>w", ':w<CR>')
vim.keymap.set("n", "<leader>q", ':q<CR>')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>n', 'gt')
vim.keymap.set('n', '<leader>N', 'gT')

vim.opt.guicursor     = ""
vim.opt.expandtab     = true
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.softtabstop   = 4
vim.opt.hlsearch      = true
vim.opt.smartcase     = true
vim.opt.mouse         = "v"
vim.opt.autoindent    = true
vim.opt.foldlevel     = 5
vim.opt.scrolloff     = 10
vim.opt.lazyredraw    = true
vim.opt.ttyfast       = true
vim.opt.cursorline    = true
vim.opt.sidescroll    = 1
vim.opt.linebreak     = true
-- vim.opt.colorcolumn   = "161"
vim.wo.wrap           = false
vim.opt.rnu           = false
vim.opt.nu            = true
vim.opt.filetype      = "on"
vim.opt.clipboard     = "unnamedplus"
vim.opt.conceallevel  = 2
vim.opt.termguicolors = true

-- float_term
vim.g.floaterm_width        = 0.7
vim.g.floaterm_height       = 0.8
vim.g.floaterm_borderchars  = '─│─│╭╮╯╰'

-- https://github.com/folke/tokyonight.nvim
-- vim.cmd[[colorscheme tokyonight-night]]
vim.cmd[[colorscheme nord]]
-- vim.cmd[[colorscheme tokyonight-storm]]
-- vim.cmd[[colorscheme tokyonight-moon]]
-- vim.cmd[[colorscheme tokyonight-day]]
-- colorscheme tokyonight-moon
-- vim.cmd[[colorscheme tokyonight-storm]]
-- vim.cmd[[colorscheme nightfox]]
-- vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
-- vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]] -- for nvimtree transparant
-- vim.cmd[[hi Normal guibg=NONE]]

------------------------------ lsp ----------------------------
vim.keymap.set("n", "<leader>d", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end)
vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })

-- https://stackoverflow.com/questions/77466697/how-to-automatically-format-on-save
vim.api.nvim_create_augroup("AutoFormat", {})
vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.py",
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !black --quiet %")
            vim.cmd("edit")
        end,
    }
)

vim.keymap.set({'n', 'x', 'o'}, 'f',  '<Plug>(leap-forward-to)')
vim.keymap.set({'n', 'x', 'o'}, 'F',  '<Plug>(leap-backward-to)')
vim.keymap.set({'n', 'x', 'o'}, 'gf', '<Plug>(leap-from-window)')
