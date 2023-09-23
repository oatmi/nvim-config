-- https://github.com/ellisonleao/gruvbox.nvim
-- vim.o.background = "dark" -- "dark" or "light" for light mode

vim.cmd('abb idbg fmt.Printf(\"debug: %+v\\n\",')
vim.cmd('abb iuid 3779255524')
vim.cmd([[inoreabbrev itime <c-r>=strftime("%Y/%m/%d %H:%M:%S")<CR>]])
vim.cmd([[inoreabbrev idate <c-r>=strftime("%Y_%m_%d")<CR>]])
vim.cmd([[inoreabbrev icmt // Copyright(C) 2023 Baidu Inc. All Rights Reserved.<CR>
            \//<CR>
            \// Author  tao (yangtao23@baidu.com)<CR>
            \// Date    <c-r>=strftime("%Y/%m/%d %H:%M:%S")<CR>]])

-- https://github.com/banga/git-split-diffs

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ':w<CR>')
vim.keymap.set("n", "<leader>q", ':q<CR>')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>n', 'gt')
vim.keymap.set('n', '<leader>N', 'gT')

vim.opt.guicursor    = ""
vim.opt.expandtab    = true
vim.opt.tabstop      = 4
vim.opt.shiftwidth   = 4
vim.opt.softtabstop  = 4
vim.opt.hlsearch     = true
vim.opt.smartcase    = true
vim.opt.mouse        = "v"
vim.opt.autoindent   = true
vim.opt.foldlevel    = 5
vim.opt.scrolloff    = 10
vim.opt.lazyredraw   = true
vim.opt.ttyfast      = true
vim.opt.cursorline   = true
vim.opt.sidescroll   = 1
vim.opt.linebreak    = true
-- vim.opt.colorcolumn  = "161"
vim.wo.wrap          = false
vim.opt.rnu          = false
vim.opt.nu           = true
vim.opt.filetype     = "on"
vim.opt.clipboard    = "unnamedplus"
vim.opt.conceallevel = 2

-- float_term
vim.g.floaterm_width        = 0.7
vim.g.floaterm_height       = 0.8
vim.g.floaterm_borderchars  = '─│─│╭╮╯╰'

-- https://github.com/folke/tokyonight.nvim
-- vim.cmd[[colorscheme tokyonight-night]]

-- vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]

-- cmdline config
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '/', '<cmd>FineCmdline /<CR>', {noremap = true})
-- cmdline config end

-- leap config
--
-- leap 插件占用了这俩key，取消掉，使用
-- leader + s/S 代替
vim.cmd('unmap s')
vim.cmd('unmap S')

vim.keymap.set("n", "<leader>s",  '<Plug>(leap-forward-to)')
vim.keymap.set("n", "<leader>gs", '<Plug>(leap-from-window)')
vim.keymap.set("n", "<leader>S",  '<Plug>(leap-backward-to)')
-- leap config end
