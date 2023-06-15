vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "tabs",
        numbers = "ordinal",
        get_element_icon = function()
            return "",""
        end,
        buffer_close_icon = 'x',
        modified_icon = '●',
        close_icon = 'x',
        left_trunc_marker = '<<',
        right_trunc_marker = '>>',
    }
}
