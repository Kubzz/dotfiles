return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			format_on_save = {
				timeout_ms = 500,
				lsp_fallbakc = true,
			},
			formatters_by_ft = {
				lua = {
					"stylua",
				},
				python = {},
				go = {},
				java = {},
				javascript = {},
				typescript = {},
			},
		},
		keys = {
			{
				"<leader>cf",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				desc = "Format Buffer",
			},
		},
	},
}
