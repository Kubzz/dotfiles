return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "saghen/blink.cmp", "SmitestP/nvim-navic" },
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client and client.server_capabilities.documentSymbolProvider then
						require("nvim-navic").attach(client, args.buf)
					end
				end,
			})
		end,
		keys = {
			{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
			{ "gr", vim.lsp.buf.references, desc = "Go to references" },
			{ "K", vim.lsp.buf.hover, desc = "Hover" },
			{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename" },
			{ "<leader>ca", vim.lsp.buf.code_actions, desc = "Code Actions" },
		},
	},
}
