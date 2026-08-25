return {
    {
        "mason-org/mason.nvim",
        cmd = "Mason",
        opts = {},
        keys = {
            { "<Leader>m", "<cmd>Mason<cr>", desc = "Mason" },
        },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                -- Bash
                "bashls",

                -- CSS
                "cssls",

                -- Docker
                "docker_language_server",

                -- GoLang
                "gopls",

                -- HTML
                "html",

                -- Lua
                "lua_ls",

                -- Python
                "basedpyright",

                -- "Typescript"
                "ts_ls",

                -- Vue
                "vue_ls",

                -- Yaml
                "yamlls",
            },
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                -- CSS
                "csskit",

                -- GoLang
                "delve",
                "golangci-lint",
                "goimports",
                "golines",

                -- HTML
                "htmlhint",

                -- Java
                "google-java-format",

                -- JSON
                "jq",
                "json-repair",

                -- Lua
                "stylua",

                -- Prettier
                "prettier",

                -- Python
                "black",
                "isort",
                "ruff",

                -- SQL
                "sqlfmt",

                --Typescript
                "ts-standard",

                -- XML
                "xmlformatter",

                -- Yaml
                "yamlfmt",
                "yamllint",
            },
        },
        auto_update = true,
    },
}
