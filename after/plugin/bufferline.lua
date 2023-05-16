vim.opt.termguicolors = true
require("bufferline").setup{
     options = {
            mode = "tabs",
            hover = {
                enabled = true,
                delay = 200,
                reveal = {'close'}
            }
        }
}
