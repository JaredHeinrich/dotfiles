return {
    "folke/snacks.nvim",
    enabled = true,
    priority = 1000,        -- load very early so other plugins can use Snacks.*
    lazy = false,           -- snacks needs to be available immediately
    dependencies = {
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }
    },
    ---@type snacks.Config
    opts = {
        picker = {
            enabled = true,
            ui_select = true,
            sources = {
                explorer = {
                    win = {
                        list = {
                            keys = {
                                ["<BS>"] = "explorer_up",
                                ["o"] = "confirm",
                                ["h"] = "explorer_close", -- close directory
                                ["a"] = "explorer_add",
                                ["d"] = "explorer_del",
                                ["r"] = "explorer_rename",
                                ["c"] = "explorer_copy",
                                ["m"] = "explorer_move",
                                ["P"] = "toggle_preview",
                                ["y"] = { "explorer_yank", mode = { "n", "x" } },
                                ["p"] = "explorer_paste",
                                ["u"] = "explorer_update",
                                ["<c-c>"] = "tcd",
                                ["<leader>/"] = "picker_grep",
                                ["<c-t>"] = "terminal",
                                ["."] = "explorer_focus",
                                ["I"] = "toggle_ignored",
                                ["H"] = "toggle_hidden",
                                ["Z"] = "explorer_close_all",
                            },
                        },
                    },
                },
            },
            win = {
                input = {
                    keys = {
                        ["qq"] = { "cancel", mode = { "i" } },
                        ["<C-l>"] = { "focus_list" },
                        ["<C-p>"] = { "focus_preview", mode = { "i", "n" }},
                        ["<C-u>"] = { "preview_scroll_up", mode = { "i", "n" }},
                        ["<C-d>"] = { "preview_scroll_down", mode = { "i", "n" }},
                        ["<C-o>"] = { "confirm", mode = { "i", "n" }},
                        ["<o>"] = { "confirm", mode = { "n" }},
                    }
                },
                list = {
                    keys = {
                        ["<C-p>"] = { "focus_preview" },
                        ["<C-u>"] = { "preview_scroll_up", mode = { "n" }},
                        ["<C-d>"] = { "preview_scroll_down", mode = { "n" }},
                        ["<C-o>"] = { "confirm", mode = { "n" }},
                        ["<o>"] = { "confirm", mode = { "n" }},
                    }
                },
                preview = {
                    keys = {
                        ["<C-p>"] = { "focus_input", mode = { "i", "n" }},
                    }
                },
            }
        },

        -- File Explorer
        explorer = {
            enabled = true,
            replace_netrw = true, -- Replace netrw with the snacks explorer
            trash = true, -- Use the system trash when deleting files
            keys = {
                ["<o>"] = { "confirm", mode = { "n" }},
            },
        },

        -- Better vim.input prompts
        input = { enabled = true },

        -- Pretty vim.notify replacement
        notifier = {
            enabled = true,
            timeout = 3000,
        },

        -- Big-file detection: disables expensive plugins for huge files
        bigfile = { enabled = true },

        -- Skip plugins for first-render of files (faster `nvim somefile.txt`)
        quickfile = { enabled = true },

        -- scope highlighting
        scope = { enabled = true },

        -- LazyGit integration
        lazygit = { enabled = true },
    },
    keys = {
        -- ─── File pickers ──────────────────────────────────────────────────
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
        { "<leader><leader>", function() Snacks.picker.buffers({ layout = {preset = "vscode"}}) end, desc = "Find buffers" },

        -- ─── Search ───────────────────────────────────────────────────────
        { "<leader>fg", function() Snacks.picker.grep() end, desc = "Live grep in cwd" },
        { "<leader>fc", function() Snacks.picker.grep_word() end, desc = "Grep word under cursor", mode = { "n", "x" } },

        -- ─── Vim-internal ─────────────────────────────────────────────────
        { "<leader>fh", function() Snacks.picker.help() end, desc = "Help tags" },
        { "<leader>fk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
        { "<leader>fd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
        { "<leader>fb", function() Snacks.picker.highlights() end, desc = "Highlightings" },
        { "<leader>fc", function() Snacks.picker.colorschemes() end, desc = "Colorschems" },
        { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification history" },

        -- ─── Git ──────────────────────────────────────────────────────────
        { "<leader>gg", function() Snacks.lazygit() end, desc = "LazyGit" },
        { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Git log (lazygit)" },

        { "<leader>ee", function() Snacks.explorer.open() end, desc = "Open explorer" },
    },
}
