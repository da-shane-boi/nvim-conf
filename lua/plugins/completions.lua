return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- For luasnip users.
                }, {
                    { name = "buffer" },
                }),
            })
        end,
    },
    -- {
    --     "aznhe21/actions-preview.nvim",
    --     require("actions-preview").setup {
    --         -- options for vim.diff(): https://neovim.io/doc/user/lua.html#vim.diff()
    --         diff = {
    --             ctxlen = 3,
    --         },
    --
    --         -- priority list of external command to highlight diff
    --         -- disabled by defalt, must be set by yourself
    --         highlight_command = {
    --             -- require("actions-preview.highlight").delta(),
    --             -- require("actions-preview.highlight").diff_so_fancy(),
    --             -- require("actions-preview.highlight").diff_highlight(),
    --         },
    --
    --         -- priority list of preferred backend
    --         backend = { "telescope", "nui" },
    --
    --         -- options related to telescope.nvim
    --         telescope = vim.tbl_extend(
    --             "force",
    --             -- telescope theme: https://github.com/nvim-telescope/telescope.nvim#themes
    --             require("telescope.themes").get_dropdown(),
    --             -- a table for customizing content
    --             {
    --                 -- a function to make a table containing the values to be displayed.
    --                 -- fun(action: Action): { title: string, client_name: string|nil }
    --                 make_value = nil,
    --
    --                 -- a function to make a function to be used in `display` of a entry.
    --                 -- see also `:h telescope.make_entry` and `:h telescope.pickers.entry_display`.
    --                 -- fun(values: { index: integer, action: Action, title: string, client_name: string }[]): function
    --                 make_make_display = nil,
    --             }
    --         ),
    --
    --         -- options for nui.nvim components
    --         nui = {
    --             -- component direction. "col" or "row"
    --             dir = "col",
    --             -- keymap for selection component: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/menu#keymap
    --             keymap = nil,
    --             -- options for nui Layout component: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/layout
    --             layout = {
    --                 position = "50%",
    --                 size = {
    --                     width = "60%",
    --                     height = "90%",
    --                 },
    --                 min_width = 40,
    --                 min_height = 10,
    --                 relative = "editor",
    --             },
    --             -- options for preview area: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup
    --             preview = {
    --                 size = "60%",
    --                 border = {
    --                     style = "rounded",
    --                     padding = { 0, 1 },
    --                 },
    --             },
    --             -- options for selection area: https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/menu
    --             select = {
    --                 size = "40%",
    --                 border = {
    --                     style = "rounded",
    --                     padding = { 0, 1 },
    --                 },
    --             },
    --         },
    --     },
    --     config = function()
    --         vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
    --     end,
    -- },
}
