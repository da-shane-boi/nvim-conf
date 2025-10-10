return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function ()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup{
            view = {
				side = "right",
                width = 50,
            },
            git = {
                enable = true,
                ignore = false,
                hide_ignored = false
            }
        }

        vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
        vim.keymap.set('n', '<M-n>', ':NvimTreeFocus<CR>')
    end,



}
