return {
    {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
	    preset = "helix",
	    delay = 200
	},
	--keys = {
	--    "<leader>?", function() require("which-key").show({ global= false }) end, desc = "Buffer local keymaps (which-key)"
	--},
	config = function(_, opts)
	    local wk = require("which-key")
	    wk.setup(opts)
    	end,
    }
}
