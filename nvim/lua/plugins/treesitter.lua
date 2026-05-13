return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
        vim.api.nvim_create_autocmd('FileType', {
            pattern = '*',
            callback = function(args)
                local lang = args.match
                if lang == 'latex' then return end
                pcall(vim.treesitter.start, args.buf, lang)
                vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
        require('nvim-treesitter-textobjects').setup({
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ['if'] = '@function.inner',
                    ['af'] = '@function.outer',
                    ['ic'] = '@class.inner',
                    ['ac'] = '@class.outer',
                    ['il'] = '@loop.inner',
                    ['al'] = '@loop.outer',
                    ['ia'] = '@parameter.inner',
                    ['aa'] = '@parameter.outer',
                },
            },
        })
    end,
}
