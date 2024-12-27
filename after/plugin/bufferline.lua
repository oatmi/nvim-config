require("bufferline").setup{
    options = {
        mode = "tabs",
        separator_style = "",
        name_formatter = function(buf)  -- buf contains:
            -- name                | str        | the basename of the active file
            -- path                | str        | the full path of the active file
            -- bufnr               | int        | the number of the active buffer
            -- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
            -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
            return buf.name
        end,
        -- offsets = {
        --     {
        --         filetype = "NvimTree", -- 如果你用 NvimTree，确保兼容
        --         text = function()
        --             local cwd = vim.fn.getcwd()
        --             return "Working Directory: " .. cwd -- 当前工作目录
        --         end,
        --         highlight = "Directory",
        --         text_align = "left",
        --     }
        -- },
        custom_areas = {
            left = function()
                local current_file = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
                return { { text = " " .. current_file .. " ", guifg = "#FFD700" } }
            end,
        },
    }
}

-- vim.cmd[[colorscheme tokyonight-day]]
-- vim.cmd[[colorscheme tokyonight-storm]]
