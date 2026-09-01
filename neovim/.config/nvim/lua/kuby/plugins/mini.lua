return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		lazy = false,
		config = function()
			require("mini.move").setup({
				mappings = {
					left = "<S-h>",
					right = "<S-l>",
					down = "<S-j>",
					up = "<S-k>",

					line_left = "<S-h>",
					line_right = "<S-l>",
					line_down = "<S-j>",
					line_up = "<S-k>",
				},
			})
			require("mini.pairs").setup()
			require("mini.surround").setup()
		end,
		keys = {
			{
				"<leader>e",
				function()
					require("mini.files").open()
				end,
				desc = "Open file explorer",
			},
		},
	},
}
