vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        float = {
            enable = false,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = "editor",
                -- relative = "cursor",
                -- width = 30,
                -- height = 30,
                row = 1,
                col = 1,
                -- border = "shadow",
                border = "rounded",
                style = "minimal",
            },
        },
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
        icons = {
            -- show = {
            --     file = false,
            --     folder = false,
            --     folder_arrow = true,
            --     git = true,
            -- },
            -- glyphs = {
            --     folder = {
            --         arrow_closed = "⏵",
            --         arrow_open = "⏷",
            --     },
            --     git = {
            --         unstaged = "✗",
            --         staged = "✓",
            --         unmerged = "⌥",
            --         renamed = "➜",
            --         untracked = "★",
            --         deleted = "⊖",
            --         ignored = "◌",
            --     },
            -- },
        },
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set("n", "<leader><tab>", vim.cmd.NvimTreeToggle)
