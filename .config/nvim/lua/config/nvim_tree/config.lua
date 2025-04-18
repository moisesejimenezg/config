vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        --mappings = {
        --list = {
        --{ key = "h", action = "close" },
        --},
        --},
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})
