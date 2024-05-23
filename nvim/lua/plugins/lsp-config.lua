return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd", -- c
					"lua_ls", -- lua
					"clojure_lsp", -- clojure
					"jdtls", -- java
					"html", -- html
					"tsserver", -- javascript
					"autotools_ls", -- make
					"pylsp", -- python
					"asm_lsp", -- assemnbly
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",

		config = function()

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.clangd.setup({ capabilities = capabilities})
			lspconfig.lua_ls.setup({ capabilities = capabilities})
			lspconfig.clojure_lsp.setup({ capabilities = capabilities})
			lspconfig.jdtls.setup({ capabilities = capabilities})
			lspconfig.html.setup({capabilities = capabilities})
			lspconfig.tsserver.setup({capabilities = capabilities})
			lspconfig.autotools_ls.setup({capabilities = capabilities})
			lspconfig.pylsp.setup({capabilities = capabilities})
			lspconfig.asm_lsp.setup({capabilities = capabilities})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
