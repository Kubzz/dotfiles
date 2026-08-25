return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        opts = {
            format_on_save = {
                timeout_ms = 500,
                lsp_fallbakc = true
            }
        },
        keys = {
            { "<leader>cf", function() require("conform").format({ async = true, lsp_fallback = true }) end, desc = "Format Buffer" }
        }
    }
}
