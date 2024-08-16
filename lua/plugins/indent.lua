return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    opts = {
        indent = {
            char = "┊",
            -- char = "U+2588",
        },
        scope = { enabled = true },
    },
}
