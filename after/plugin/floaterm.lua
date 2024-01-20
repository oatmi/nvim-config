-- https://github.com/voldikss/vim-floaterm

-- Set floaterm window's background to black
vim.cmd([[hi Floaterm       guibg=None]])
vim.cmd([[hi FloatermBorder guibg=None]])

-- Set floating window border line color to cyan, and background to orange
-- hi FloatermBorder guibg=orange guifg=cyan

vim.keymap.set('n', '<C-n>', vim.cmd.FloatermToggle)
