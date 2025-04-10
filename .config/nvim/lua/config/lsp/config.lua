local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    -- Mappings.

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
end

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig")["clangd"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
require("lspconfig")["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
require("lspconfig")["pyright"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
require("lspconfig").grammarly.setup({
    filetypes = { "markdown" },
    init_options = {
        clientId = vim.env.GRAMMARLY_TOKEN,
    },
    cmd = { "grammarly-languageserver", "--stdio" },
})
