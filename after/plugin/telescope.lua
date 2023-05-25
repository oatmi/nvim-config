-- https://github.com/nvim-telescope/telescope.nvim

local builtin = require('telescope.builtin')

require('telescope').setup({
    defaults = {
        layout_strategy = 'vertical',
        layout_config = {
            vertical = {
                width = 0.8,
                height = 0.8,
                prompt_position = "bottom"
            }
            -- other layout configuration here
        },
        -- other defaults configuration here
    },
    -- other configuration values here
})


vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})

vim.keymap.set('n', '<leader>a', function() 
    return builtin.grep_string({ search = vim.fn.expand("<cword>") })
end, {})

-- vim.keymap.set('n', '<leader>f', builtin.grep_string({search = "hi"}), { search = vim.fn.expand("<cword>") })

-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--
-- :Telescope grep_string
--
-- vim.ui.input({prompt = ' Grep > '}, function(value)
--   require('telescope.builtin').grep_string({search = value})
-- end)

-- nnoremap <leader>fG :execute 'Telescope live_grep default_text=' . expand('<cword>')<cr>
