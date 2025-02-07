return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = { { "<leader>t", "<cmd>ToggleTerm<CR>", "ToggleTerm" } },
	opts = {
		insert_mapping = false,
		start_in_insert = true,
		winbar = {
			enable = true,
		},
	},
}
