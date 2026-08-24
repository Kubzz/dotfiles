return {
    {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
	    require("mini.files").setup()
	    require("mini.surround").setup()
	    require("mini.pairs").setup()
	end,
	keys = {
	    { "<leader>e", function() require("mini.files").open() end, desc = "Open file explorer" },
	}
    }
}
