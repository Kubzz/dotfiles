return {
    {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
	    input = {},
	    picker = {},
	},
	keys = {
	-- Picker --
	    { "<leader>fP", function() Snacks.picker() end, desc = "Open Picker" },
	    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
	    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Find Recent" },
	    { "<leader>fp", function() Snacks.picker.projects() end, desc = "Find Projects" },
	    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
	    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config Files" },
	    
	    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Find Command History" },

	    { "<leader>fb", function() Snacks.picker.lines() end, desc = "Find Buffer Lines" }

	}
    }
}
