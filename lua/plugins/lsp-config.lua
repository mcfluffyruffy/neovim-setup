return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "clangd",
                "cmake",
                "dockerls",
                "marksman",
                "pyre",
                "rust_analyzer",
                "lemminx",
                "omnisharp"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            vim.keymap.set('n', 'h', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'FD', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.cmake.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.marksman.setup({})
            lspconfig.pyre.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.lemminx.setup({})
            lspconfig.omnisharp.setup({})
        end
    }
}
