local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({
    sign_icons = {}
})
lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'rust_analyzer',
  'gopls',
  'tsserver',
  'eslint',
})

lsp.setup()

require'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

require('lspconfig')['tsserver'].setup{
    settings = {
        javascript = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'react'},
            },
        },
    },
}

-- https://github.com/neovim/nvim-lspconfig
vim.keymap.set("n", "<leader>d", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end)

vim.cmd [[autocmd BufWritePre *    "lua vim.lsp.buf.format()"]]
