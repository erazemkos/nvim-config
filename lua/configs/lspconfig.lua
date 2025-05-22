require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "templ", "javascript" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
