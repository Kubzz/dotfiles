return {
    {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
	    keymap = { preset = "super-tab" },
	    nerd_font_variant = "mono",
	    completion = { documentation = { auto_show = true } },
	    sources = {
		default = { "lsp", "path", "snippets", "buffer" }
	    }
	},
	opts_extend = { "sources.default" }
    },
    {
	"saghen/blink.indent",
	opts = {}
    }
}
