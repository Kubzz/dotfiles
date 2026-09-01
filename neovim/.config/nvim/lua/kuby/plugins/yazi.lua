return {
	{
		"mikavilpas/yazi.nvim",
		version = "*",
		event = "VeryLazy",
		dependencies = {
			{ "nvim-lua/plenary.nvim", lazy = true },
		},
		opts = {
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
		},
		init = function()
			vim.g.loaded_netrwPlugin = 1
		end,
		keys = {
			{ "<leader>e", "<cmd>Yazi<cr>", desc = "Open yazi at current file" },
		},
	},
}
