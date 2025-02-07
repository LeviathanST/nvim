return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	config = function()
		local builtin = require "telescope.builtin"
		local map = require("utils").map

		local function find_files_with_hidden()
			builtin.find_files {
				hidden = true,
				find_commands = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
			}
		end

		map("n", "<leader>sf", find_files_with_hidden, { noremap = true, desc = "[S]earch [F]iles" })
		require("telescope").setup {}
	end,
}
