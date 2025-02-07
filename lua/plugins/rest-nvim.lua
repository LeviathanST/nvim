local map = require("utils").map

return {
	"rest-nvim/rest.nvim",
	config = function()
		map("n", "<leader>rr", "<cmd>Rest run<CR>", { noremap = true, silent = true })
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			table.insert(opts.ensure_installed, "http")
		end,
	},
}
