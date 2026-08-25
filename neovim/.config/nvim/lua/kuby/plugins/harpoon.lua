return {
    {
        "ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
	    { "nvim-lua/plenary.nvim" }
	},
	config = function()
	    require("harpoon").setup()
	end,
	keys = {
    	    { "<leader>hh", function() require("harpoon"):list():add() end, desc = "Harpoon: Add file" },
    	    { 
		"<leader>hH",
		function()
		    local harpoon = require("harpoon")
		    harpoon.ui:toggle_quick_menu(harpoon:list())
	    	end,
		desc = "Harpoon: Toggle menu"
	    },
    	    { "<leader>h1", function() require("harpoon"):list():select(1) end, desc = "Harpoon: File 1" },
    	    { "<leader>h2", function() require("harpoon"):list():select(2) end, desc = "Harpoon: File 2" },
    	    { "<leader>h3", function() require("harpoon"):list():select(3) end, desc = "Harpoon: File 3" },
    	    { "<leader>h4", function() require("harpoon"):list():select(4) end, desc = "Harpoon: File 4" },
        },
    }
}
