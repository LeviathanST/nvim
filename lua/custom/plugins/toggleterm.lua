function _G.set_terminal_keymap() end

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			shell = vim.o.shell,
		})

		local Terminal = require("toggleterm.terminal").Terminal

		function _term_toggle()
			local term = Terminal:new({
				cmd = "bash",
				direction = "horizontal",
				hidden = true,
			})
			term:toggle()
		end

		vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>lua _term_toggle()<CR>", { noremap = true, silent = true })
	end,
}
