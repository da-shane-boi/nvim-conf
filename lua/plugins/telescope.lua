return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'jvgrootveld/telescope-zoxide',
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<c-f>', builtin.find_files, {})
            vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
            vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            local z_utils = require("telescope._extensions.zoxide.utils")
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    },
                    zoxide = {
                        prompt_title = "[ Walking on the shoulders of TJ ]",
                        mappings = {
                            default = {
                                after_action = function(selection)
                                    print("Update to (" .. selection.z_score .. ") " .. selection.path)
                                end
                            },
                            ["<C-u>"] = {
                                before_action = function(selection) print("before C-u") end,
                                keepinsert = true,
                                action = function(selection)
                                    vim.cmd.edit(selection.path)
                                end
                            },
                            ["<C-q>"] = { action = z_utils.create_basic_command("split") },
                        },
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
