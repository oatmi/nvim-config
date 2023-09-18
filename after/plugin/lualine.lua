require('lualine').setup {
    options = {
        -- theme = 'auto',
        theme = 'gruvbox',
        icons_enabled = true,
        show_filename_only = false,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },

    -- https://github.com/nvim-lualine/lualine.nvim
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'diff', 'diagnostics'},
        lualine_c = {
            { 'filename', path = 1 },
            'progress',
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            {
                'datetime',
                -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
                style = "%m/%d %H:%M"
            }
        }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

-- https://github.com/nvim-lualine/lualine.nvim#custom-components
--
-- local function hello()
--   return [[hello world]]
-- end
-- sections = { lualine_a = { hello } }
