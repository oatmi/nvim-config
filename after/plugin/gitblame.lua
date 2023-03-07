vim.g.gitblame_enabled = 0
vim.g.gitblame_date_format = "%Y-%m-%d %X"
vim.keymap.set("n", "<leader>s", vim.cmd.GitBlameToggle)
