return {
	{
		"nvim-java/nvim-java",
		lazy = false,
		config = function()
			require("java").setup({
				jdk = {
					auto_install = false,
				},
			})
			vim.lsp.enable("jdtls")
			vim.lsp.config("jdtls", {
				settings = {
					java = {
						configuration = {
							runtimes = {
								{
									name = "Default-Java",
									path = "/usr/bin/java",
									default = true,
								},
							},
						},
					},
				},
			})
		end,
		keys = {
			-- Workspace --
			{
				"<leader>jwb",
				function()
					require("java").build.build_workspace()
				end,
				desc = "Build Java Workspace",
			},
			{
				"<leader>jwc",
				function()
					require("java").build.clean_workspace()
				end,
				desc = "Clean Java Workspace",
			},

			-- Runner --
			{
				"<leader>jrr",
				function()
					require("java").runner.built_in.run_app({})
				end,
				desc = "Run Java App",
			},
			{
				"<leader>jrs",
				function()
					require("java").runner.built_in.stop_app()
				end,
				desc = "Stop Java App",
			},
			{
				"<leader>jrl",
				function()
					require("java").runner.built_in.toggle_logs()
				end,
				desc = "Toggle Java Logs",
			},

			-- DAP --
			{
				"<leader>jd",
				function()
					require("java").dap.config_dap()
				end,
				desc = "configure Java DAP",
			},

			-- Test --
			{
				"<leader>jtc",
				function()
					require("java").test.run_current_class()
				end,
				desc = "Run Current Test Class",
			},
			{
				"<leader>jtC",
				function()
					require("java").test.debug_current_class()
				end,
				desc = "Debug Current Test Class",
			},
			{
				"<leader>jtm",
				function()
					require("java").test.run_current_method()
				end,
				desc = "Run Current Test Method",
			},
			{
				"<leader>jtM",
				function()
					require("java").test.debug_current_method()
				end,
				desc = "Debug Current Test Method",
			},
			{
				"<leader>jta",
				function()
					require("java").test.run_all_tests()
				end,
				desc = "Run All Tests",
			},
			{
				"<leader>jtA",
				function()
					require("java").test.debug_all_tests()
				end,
				desc = "Debug All Tests",
			},
			{
				"<leader>jtr",
				function()
					require("java").test.view_last_report()
				end,
				desc = "View Last Test Report",
			},

			-- Profile --
			{
				"<leader>jp",
				function()
					require("java").profile.ui()
				end,
				desc = "View Java Profiles",
			},
		},
	},
}
