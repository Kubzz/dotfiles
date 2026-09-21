local tabnine_host = "https://api.tabnine.com"

return {
	{
		"kubzz/tabnine-nvim",
		branch = "rust-downgrades",
		build = function(plugin)
			vim.fn.system({ "bash", plugin.dir, "./dl_binaries " .. tabnine_host .. "/update" })
			vim.fn.system({ "cargo", "build", "--release", plugin.dir .. "/webview" })
		end,
		config = function()
			require("tabnine").setup({
				disable_auto_comment = false,
				accept_keymap = "<C-t>",
				dismiss_keymap = "<C-]>",
				debounce_ms = 800,
				suggestion_color = { gui = "#808080", cterm = 244 },
				codelens_color = { gui = "#808080", cterm = 244 },
				codelens_enabled = true,
				exclude_filetypes = { "TelescopePrompt", "NvimTree", "snacks_dashboard" },
				log_file_path = nil,
				tabnine_enterprise_host = tabnine_host,
				ignore_certificate_errors = true,
			})
		end,
	},
}
