return {
    'sindrets/diffview.nvim',

    config = function ()
            vim.keymap.set({ "n", "v" }, "<C-h>", ":DiffviewOpen<CR>")
    end
}
