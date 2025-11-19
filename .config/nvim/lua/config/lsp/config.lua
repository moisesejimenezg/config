local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    -- Mappings.

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
end

vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("pyright")
vim.lsp.enable("GitHub Copilot")
