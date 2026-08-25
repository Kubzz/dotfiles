return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "saghen/blink.cmp" },
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()

	    vim.lsp.config("*", {
        	capabilities = capabilities
            })
        end,
        keys = {
            { "gd", vim.lsp.buf.definition, desc = "Go to definition" },
            { "gr", vim.lsp.buf.references, desc = "Go to references" },
            { "K", vim.lsp.buf.hover, desc = "Hover" },
            { "<leader>rn", vim.lsp.buf.rename, desc = "Rename" },
            { "<leader>ca", vim.lsp.buf.code_actions, desc = "Code Actions" }
        }
    }
}
