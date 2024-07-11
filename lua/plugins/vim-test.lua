return {
    'vim-test/vim-test',

    config = function ()
        vim.keymap.set('n', '<leader>m', ':TestFile<CR>')
        vim.keymap.set('n', 'm', ':TestNearest<CR>')
    end
}
