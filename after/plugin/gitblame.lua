require('gitblame').setup {
    enabled = false,
    gitblame_message_template = '<sha> • <date> • <author> • <summary>',
    date_format = "%Y-%m-%d %X",
}

vim.keymap.set("n", "<leader>g", vim.cmd.GitBlameToggle)
