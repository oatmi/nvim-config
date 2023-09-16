require('neorg').setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    home = "~/notes/home",
                    journal = "~/notes/home/journal",
                    work = "~/notes/home/work",
                },
            },
        },
    },
}
