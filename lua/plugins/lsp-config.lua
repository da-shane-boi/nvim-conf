return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				-- Install necessary formatters and linters
				ensure_installed = { "shfmt", "biome", "prettier", "black", "checkstyle", "pylint" },
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- Install necessary LSP
				ensure_installed = {
					"lua_ls",
					"lemminx",
					"bashls",
					"pylsp",
					"tsserver",
					"cssls",
					"html",
					"markdown_oxide", -- Markdown lsp
					"jdtls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lsp_config = require("lspconfig")
			lsp_config.pylsp.setup({ capabilities = capabilities })
			lsp_config.lemminx.setup({ capabilities = capabilities })
			lsp_config.bashls.setup({ capabilities = capabilities })
			lsp_config.tsserver.setup({ capabilities = capabilities })
			lsp_config.html.setup({ capabilities = capabilities })
			lsp_config.cssls.setup({ capabilities = capabilities })
			lsp_config.lua_ls.setup({ capabilities = capabilities })
			lsp_config.jdtls.setup({ capabilities = capabilities })
			lsp_config.markdown_oxide.setup({ capabilities = capabilities })

            vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
            vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, {})
            vim.keymap.set({ "n", "v" }, "<C-a>", vim.lsp.buf.code_action, {})
            vim.keymap.set({ "n", "v" }, "<leader>lr", ":LspRestart<CR>", {})
            -- vim.keymap.set('n', '<leader>b', vim.diagnostic.open_float(), {})
        end,
    },
}
