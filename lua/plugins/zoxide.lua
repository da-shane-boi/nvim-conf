return {
    "jvgrootveld/telescope-zoxide",
    config = function ()
        require('telescope').load_extension('zoxide')
        vim.keymap.set("n", "<leader>cd", require("telescope").extensions.zoxide.list)
    end,

}
