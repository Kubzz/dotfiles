local function get_palette()
	local ok, cp = pcall(require, "catppuccin.palettes")
	if ok then
		return cp.get_palette()
	end
	return nil
end

local function progress_location()
	local line = vim.fn.line(".")
	local col = vim.fn.col(".")
	local total = vim.fn.line("$")
	local progress = math.floor((line / total) * 100)
	return string.format("%d:%d (%d%%%%)", line, col, progress)
end

return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons", opt = true },
		},
		opts = {
			options = {
				theme = "auto",
				component_separators = { left = "", right = "" },
				globalstatus = true,
				always_show_tabline = true,
			},
			sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{
						function()
							local mode_map = {
								n = "N",
								i = "I",
								v = "V",
								V = "V",
								[""] = "V",
								c = "C",
								R = "R",
								t = "T",
							}
							return mode_map[vim.fn.mode()] or "?"
						end,
						color = function()
							local p = get_palette()
							if not p then
								return { fg = "#1e1e2e", bg = "#cdd6da" }
							end
							local mode_colors = {
								n = { fg = p.base, bg = p.green },
								i = { fg = p.base, bg = p.blue },
								v = { fg = p.base, bg = p.yellow },
								V = { fg = p.base, bg = p.yellow },
								[""] = { fg = p.base, bg = p.yellow },
								c = { fg = p.base, bg = p.red },
								R = { fg = p.base, bg = p.maroon },
								t = { fg = p.base, bg = p.teal },
							}
							local mode = vim.fn.mode()
							return mode_colors[mode] or { fg = "#1e1e2e", bg = "#cdd6da" }
						end,
						padding = { left = 1, right = 1 },
					},
					{
						function()
							return " "
						end,
					},
					{
						function()
							return vim.bo.modified and "●" or "✓"
						end,
						color = function()
							return vim.bo.modified and { fg = "#1e1e2e", bg = "#f38ba8" }
								or { fg = "#1e1e2e", bg = "#a6e3a1" }
						end,
						padding = { left = 1, right = 1 },
					},
					{
						function()
							return " "
						end,
					},
					{ "branch", icon = "", colour = { gui = "bold" } },
					{ "diff", symbols = { added = " ", modified = " ", removed = " " } },
					{
						"diagnostics",
						symbols = { error = " ", warn = " ", info = " ", hint = "● " },
					},
				},
				lualine_x = { "filetype", "lsp_status", progress_location },
				lualine_y = {},
				lualine_z = {},
			},
		},
	},
}
