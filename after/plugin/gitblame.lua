vim.g.gitblame_enabled = 0
vim.g.gitblame_date_format = "%Y-%m-%d %X"
vim.g.gitblame_message_template = '<sha> • <date> • <author> • <summary>'
vim.keymap.set("n", "<leader>g", vim.cmd.GitBlameToggle)
