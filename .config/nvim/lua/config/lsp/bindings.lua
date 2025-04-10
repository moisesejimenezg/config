-- Lsp
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, bufopts)
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
vim.keymap.set("n", "gR", vim.lsp.buf.references, bufopts)
