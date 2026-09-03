return {
	{
		"mfussengger/nvim-dap",
		config = function(_, opts)
			local dap = require("dap")
			local palette = require("catppuccin.palettes").get_palette()

			local function set_dap_highlights()
				vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = palette.red })
				vim.api.nvim_set_hl(0, "DapBreakpointCondition", { fg = palette.yellow })
				vim.api.nvim_set_hl(0, "DapBreakpointRejected", { fg = palette.overlay0 })
				vim.api.nvim_set_hl(0, "DapLogPoint", { fg = palette.blue })
				vim.api.nvim_set_hl(0, "DapStopped", { fg = palette.green })
				vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = palette.surface0 })
			end

			set_dap_highlights()
			vim.api.nvim_create_autocmd("ColorScheme", {
				group = vim.api.nvim_create_augroup("DapHighlights", { clear = true }),
				callback = set_dap_highlights,
			})

			local signs = {
				DapBreakpoint = { text = "", texthl = "DapBreakpoint" },
				DapBreakpointCondition = { text = "", texthl = "DapBreakpointCondition" },
				DapBreakpointRejected = { text = "", texthl = "DapBreakpointRejected" },
				DapLogPoint = { text = "", texthl = "DapLogPoint" },
				DapStopped = { text = "󰍟", texthl = "DapStopped", linehl = "DapStoppedLine", numhl = "DapStopped" },
			}
			for name, sign in pairs(signs) do
				vim.fn.sign_define(name, sign)
			end
		end,
		keys = {
			{
				"<leader>dc",
				function()
					require("dap").continue()
				end,
				desc = "Debug: Continue / Start",
			},
			{
				"<leader>do",
				function()
					require("dap").step_over()
				end,
				desc = "Debug: Step Over",
			},
			{
				"<leader>di",
				function()
					require("dap").step_into()
				end,
				desc = "Debug: Step Into",
			},
			{
				"<leader>dO",
				function()
					require("dap").step_out()
				end,
				desc = "Debug: Step Out",
			},
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Debug: Toggle Breakpoint",
			},
			{
				"<leader>dB",
				function()
					require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
				end,
				desc = "Debug: Conditional Breakpoint",
			},
			{
				"<leader>dt",
				function()
					require("dap").terminate()
				end,
				desc = "Debug: Terminate",
			},
			{
				"<leader>dh",
				function()
					require("dap.ui.widgets").hover()
				end,
				desc = "Debug: Hover Value",
			},
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		dependencies = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
		opts = {
			enabled = true,
			enabled_commands = true,
			highlight_changed_variables = true,
			show_stop_reason = true,
			commented = true,
		},
	},
	{
		"igorlfs/nvim-dap-view",
		event = "VeryLazy",
		dependencies = { "mfussenegger/nvim-dap" },
		opts = {
			auto_toggle = true,
			winbar = {
				sections = { "scopes", "watches", "breakpoints", "threads", "repl", "console" },
				default_section = "scopes",
				controls = {
					enabled = true,
					position = "right",
				},
			},
		},
		keys = {
			{ "<leader>du", "<cmd>DapViewToggle<cr>", desc = "Debug: Toggle DAP View" },
		},
	},
}
