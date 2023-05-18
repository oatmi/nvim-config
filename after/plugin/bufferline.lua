vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "tabs",
        numbers = "ordinal",
        get_element_icon = function()
            return "",""
        end,
    }
}
