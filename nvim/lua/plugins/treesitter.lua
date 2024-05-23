return {
	"nvim-treesitter/nvim-treesitter",
	build = "TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "c", "lua", "vim", "javascript", "html", "python", "java", "c", "cpp" },
			sync_install = false,
			hightlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
