return {
	{
		"folke/snacks.nvim",
		lazy = false,
		---@type snacks.Config
		opts = {
			bufdelete = {},
			dashboard = {
				enabled = true,

				preset = {
					keys = {
						{
							icon = "󰍉",
							key = "f",
							desc = "Find File",
							action = ":lua Snacks.dashboard.pick('files')",
						},
						{ icon = "", key = "n", desc = "New File", action = ":ene | startinsert" },
						{
							icon = "󰎞",
							key = "g",
							desc = "Find Text",
							action = ":lua Snacks.dashboard.pick('live_grep')",
						},
						{
							icon = "",
							key = "r",
							desc = "Recent Files",
							action = ":lua Snacks.dashboard.pick('oldfiles')",
						},
						{
							icon = "",
							key = "e",
							desc = "Open Yazi Explorer",
							action = "<cmd>Yazi<cr>",
						},
						{
							icon = "",
							key = "c",
							desc = "Config",
							action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
						},
						{ icon = "󰏗 ", key = "m", desc = "Mason", action = ":Mason" }, -- replaced session restore
						{ icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy },
						{ icon = "󰈆", key = "q", desc = "Quit", action = ":qa" },
					},
				},
				sections = {
					{ section = "header", align = "center" },
					{
						pane = 2,
						padding = 7,
					},
					{ section = "keys", pane = 1, gap = 1, padding = 1 },

					{
						pane = 2,
						icon = " ",
						title = "Recent Files",
						section = "recent_files",
						indent = 2,
						padding = 1,
					},
					{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{
						pane = 2,
						icon = " ",
						title = "Git Status",
						section = "terminal",
						enabled = function()
							return Snacks.git.get_root() ~= nil
						end,
						cmd = "git status --short --branch --renames",
						height = 5,
						padding = 1,
						ttl = 5 * 60,
						indent = 3,
					},
					{ section = "startup", align = "center" },
				},
			},
			input = {},
			picker = {},
		},
		keys = {
			-- Picker --
			{
				"<leader>fP",
				function()
					Snacks.picker()
				end,
				desc = "Open Picker",
			},
			{
				"<leader>ff",
				function()
					Snacks.picker.files()
				end,
				desc = "Find Files",
			},
			{
				"<leader>fr",
				function()
					Snacks.picker.recent()
				end,
				desc = "Find Recent",
			},
			{
				"<leader>fp",
				function()
					Snacks.picker.projects()
				end,
				desc = "Find Projects",
			},
			{
				"<leader>fg",
				function()
					Snacks.picker.git_files()
				end,
				desc = "Find Git Files",
			},
			{
				"<leader>fc",
				function()
					Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Find Config Files",
			},

			{
				"<leader>:",
				function()
					Snacks.picker.command_history()
				end,
				desc = "Find Command History",
			},

			{
				"<leader>fB",
				function()
					Snacks.picker.lines()
				end,
				desc = "Find Buffer Lines",
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Find Open Buffers",
			},
		},
	},
}
