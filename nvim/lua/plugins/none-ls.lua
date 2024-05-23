return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.formatting.asmfmt, -- assembler
				null_ls.builtins.formatting.clang_format, -- clang
				null_ls.builtins.formatting.djlint, -- html
				null_ls.builtins.formatting.gofumpt, -- formats go
				null_ls.builtins.formatting.goimports, -- adds go imports
				null_ls.builtins.formatting.goimports_reviser, -- sort goimports by 3 groups: std, general and project dependencies.
				null_ls.builtins.formatting.google_java_format, -- formats javacode according to google java format
				null_ls.builtins.diagnostics.codespell,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
