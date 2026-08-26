return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha",
		},
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
		integrations = {
			blink_cmp = {
				style = "bordered",
			},
			gitsigns = true,
			lualine = true,
			mason = true,
			mini = {
				enabled = true,
			},
			noice = true,
			dap = true,
			treesitter_context = true,
			snacks = {
				enabled = true,
			},
			which_key = true,
		},
	},
}
