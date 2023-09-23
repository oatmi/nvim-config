require('leap').add_default_mappings()

-- leap 插件占用了这俩key，取消掉，使用
-- leader + s/S 代替
vim.cmd([[silent! unmap s]])
vim.cmd([[silent! unmap S]])

vim.keymap.set("n", "<leader>s",  '<Plug>(leap-forward-to)')
vim.keymap.set("n", "<leader>gs", '<Plug>(leap-from-window)')
vim.keymap.set("n", "<leader>S",  '<Plug>(leap-backward-to)')
