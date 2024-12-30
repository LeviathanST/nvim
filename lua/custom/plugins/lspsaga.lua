local map = vim.keymap.set

map("n", "<leader>rf", "<cmd>Lspsaga finder<CR>")
return {
	"nvimdev/lspsaga.nvim",
	after = "nvim-lspconfig",
	opts = {
		code_action = {
			enable = false,
		},
		lightbulb = {
			enable = false,
		},
		finder = {
			keys = {
				vsplit = "v",
			},
		},
	},
}
