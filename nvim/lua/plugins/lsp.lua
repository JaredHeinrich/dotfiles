return {
    {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                { path = 'luvit-meta/library', words = { 'vim%.uv' } },
            },
        },
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {desc = 'Open [C]ode [A]ctions'})

            vim.lsp.document_color.enable(true, nil, { style = "foreground" })

            vim.lsp.enable({
                "lua_ls",
                "ltex_plus",
                "tinymist",
                "basedpyright",
                "rust_analyzer",
                "vtsls",
                "jdtls",
                "svelte",
                "eslint",
                "jsonls",
                "yamlls",
                "bashls",
                "dockerls",
                "clangd",
            })

            -- Diagnostics global config
            vim.diagnostic.config({
                virtual_text = false,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
                float = {
                    border = "rounded",
                    source = "if_many",
                    header = "",
                    prefix = "",
                },
            })
        end,
    },
}
