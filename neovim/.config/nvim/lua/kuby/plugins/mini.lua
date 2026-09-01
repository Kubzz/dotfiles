return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		lazy = false,
		config = function()
			require("mini.map").setup()
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
				"<leader>so",
				function()
					require("mini.map").open()
				end,
				desc = "Open Scroll Map",
			},
			{
				"<leader>sc",
				function()
					require("mini.map").close()
				end,
				desc = "Close Scroll Map",
			},
		},
	},
}
