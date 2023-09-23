require('neorg').setup {
    load = {
        ["core.defaults"]  = {}, -- Loads default behaviour
        ["core.mode"]      = {},
        ["core.summary"]   = {},
        ["core.concealer"] = {}, -- Adds pretty icons to your documents

        ["core.journal"] = {
            config = {
                strategy = "flat",
                toc_format = { "yy", "mm", "dd" },
            },
        },

        -- https://github.com/nvim-neorg/neorg/wiki/User-Keybinds
        ["core.keybinds"] = {
            config = {
                hook = function(keybinds)
                    keybinds.remap_event("norg", "n", "<Leader>td", "core.qol.todo_items.todo.task_done")
                    keybinds.remap_event("norg", "n", "<Leader>tu", "core.qol.todo_items.todo.task_undone")
                end,
            }

        },
        -- https://github.com/nvim-neorg/neorg/wiki/Core-Presenter
        ["core.presenter"] = {
            config = {
                zen_mode = "zen-mode",
            },
        },

        ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    home    = "~/notes/home",
                    journal = "~/notes/home/journal",
                },
            },
        },
    },
}
