require("tao")

-- https://github.com/ellisonleao/gruvbox.nvim
-- vim.o.background = "dark" -- "dark" or "light" for light mode

vim.cmd('abb idbg fmt.Printf(\"debug: %+v\\n\",')
vim.cmd('abb iuid 3779255524')
vim.cmd([[inoreabbrev itime <c-r>=strftime("%Y/%m/%d %H:%M:%S")<CR>]])
vim.cmd([[inoreabbrev icmt // Copyright(C) 2023 Baidu Inc. All Rights Reserved.<CR>
            \//<CR>
            \// Author  tao (yangtao23@baidu.com)<CR>
            \// Date    <c-r>=strftime("%Y/%m/%d %H:%M:%S")<CR>]])

-- https://github.com/banga/git-split-diffs
