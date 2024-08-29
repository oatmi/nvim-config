vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode                = "tabs",
        numbers             = "ordinal",
        buffer_close_icon   = '',
        modified_icon       = '●',
        close_icon          = 'x',
        left_trunc_marker   = '<<',
        right_trunc_marker  = '>>',
        max_name_length     = 90,
        name_formatter = function(buf)  -- buf contains:
            return buf.name
            -- name                | str        | the basename of the active file
            -- path                | str        | the full path of the active file
            -- bufnr               | int        | the number of the active buffer
            -- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
            -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
        end,

        get_element_icon = function()
            return "",""
        end,
    }
}
