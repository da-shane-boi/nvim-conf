return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            theme = "wave",
            compile = false,             -- enable compiling the colorscheme
            undercurl = true,            -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true},
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = true,         -- do not set background color
            dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, 
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none",
                        },
                    },
                },
            },

            -- transparent = true,
            -- styles = {
            --     sidebars = "transparent",
            --     floats = "transparent",
            -- },
            --     overrides = function(colors)
            --         local theme = colors.theme
            --         return {
            --             NormalFloat = { bg = "none" },
            --             FloatBorder = { bg = "none" },
            --             FloatTitle = { bg = "none" },
            --
            --             TelescopeTitle = { fg = theme.ui.special, bold = true },
            --             TelescopePromptNormal = { bg = "none" },
            --             TelescopePromptBorder = { fg = theme.ui.special, bg = "none" },
            --             TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
            --             TelescopeResultsBorder = { fg = theme.ui.special, bg = "none" },
            --             TelescopePreviewNormal = { bg = "none" },
            --             TelescopePreviewBorder = { bg = "none", fg = theme.ui.special },
            --         }
            --     end,
        })
        vim.cmd.colorscheme("kanagawa-wave")
    end,
}
