return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
		opts = {
			options = {
				theme = "auto",
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					"%=",
					{
						"diagnostics",
						symbols = { error = "● ", warn = "● ", info = "● ", hint = "● " },
					},
				},
				lualine_x = { "progress", "location" },
				lualine_y = { "lsp_status" },
				lualine_z = { "filename", "filetype" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = { "branch" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "lsp_status" },
				lualine_z = { "filename", "filetype" },
			},
		},
	},
}
