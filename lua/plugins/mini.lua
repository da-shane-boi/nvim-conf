return {
    'echasnovski/mini.nvim',
    version = false,
    {
        'echasnovski/mini.move',
        version = false,
        config = function()
            require("mini.move").setup({
                -- Module mappings. Use `''` (empty string) to disable one.
                mappings = {
                    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                    left = '<S-h>',
                    right = '<S-l>',
                    down = '<S-j>',
                    up = '<S-k>',

                    -- Move current line in Normal mode
                    line_left = '<M-h>',
                    line_right = '<M-l>',
                    line_down = '<M-j>',
                    line_up = '<M-k>',
                },

                -- Options which control moving behavior
                options = {
                    -- Automatically reindent selection during linewise vertical move
                    reindent_linewise = true,
                },
            })
        end
    },
    {
        'echasnovski/mini.surround',
        version = false,
        config = function()
            require("mini.surround").setup({
                -- Add custom surroundings to be used on top of builtin ones. For more
                -- information with examples, see `:h MiniSurround.config`.
                custom_surroundings = {
                  -- Make `)` insert parts with spaces. `input` pattern stays the same.
                  [')'] = { output = { left = '(', right = ')' } },

                  -- Use function to compute surrounding info
                  ['*'] = {
                    input = function()
                      local n_star = MiniSurround.user_input('Number of * to find')
                      local many_star = string.rep('%*', tonumber(n_star) or 1)
                      return { many_star .. '().-()' .. many_star }
                    end,
                    output = function()
                      local n_star = MiniSurround.user_input('Number of * to output')
                      local many_star = string.rep('*', tonumber(n_star) or 1)
                      return { left = many_star, right = many_star }
                    end,
                  },
                },

                -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
                highlight_duration = 500,

                -- Module mappings. Use `''` (empty string) to disable one.
                mappings = {
                    add = 'sa',            -- Add surrounding in Normal and Visual modes
                    delete = 'sd',         -- Delete surrounding
                    find = 'sf',           -- Find surrounding (to the right)
                    find_left = 'sF',      -- Find surrounding (to the left)
                    highlight = 'sh',      -- Highlight surrounding
                    replace = 'sr',        -- Replace surrounding
                    update_n_lines = 'sn', -- Update `n_lines`

                    suffix_last = 'l',     -- Suffix to search with "prev" method
                    suffix_next = 'n',     -- Suffix to search with "next" method
                },

                -- Number of lines within which surrounding is searched
                n_lines = 20,

                -- Whether to respect selection type:
                -- - Place surroundings on separate lines in linewise mode.
                -- - Place surroundings on each line in blockwise mode.
                respect_selection_type = false,

                -- How to search for surrounding (first inside current line, then inside
                -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
                -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
                -- see `:h MiniSurround.config`.
                search_method = 'cover',

                -- Whether to disable showing non-error feedback
                silent = false,
            })
        end
    },
    {
        'echasnovski/mini.map',
        version = false,
        config = function()
            require("mini.map").setup({
                -- Highlight integrations (none by default)
                integrations = nil,

                -- Symbols used to display data
                symbols = {
                    -- Encode symbols. See `:h MiniMap.config` for specification and
                    -- `:h MiniMap.gen_encode_symbols` for pre-built ones.
                    -- Default: solid blocks with 3x2 resolution.
                    encode = nil,

                    -- Scrollbar parts for view and line. Use empty string to disable any.
                    scroll_line = '█',
                    scroll_view = '┃',
                },

                -- Window options
                window = {
                    -- Whether window is focusable in normal way (with `wincmd` or mouse)
                    focusable = false,

                    -- Side to stick ('left' or 'right')
                    side = 'right',

                    -- Whether to show count of multiple integration highlights
                    show_integration_count = true,

                    -- Total width
                    width = 10,

                    -- Value of 'winblend' option
                    winblend = 25,

                    -- Z-index
                    zindex = 10,
                },
            })
        end
    },
}
