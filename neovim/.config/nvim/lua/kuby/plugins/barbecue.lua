return {
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			exclude_filetypes = { "dap-view", "dap-view-term", "dap-repl", "snacks_dashboard" },
		},
	},
}
