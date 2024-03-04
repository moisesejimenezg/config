local actions = require("telescope.actions")
require("telescope").setup({
    pickers = {
        buffers = {
            mappings = {
                n = {
                    ["<c-D>"] = actions.delete_buffer + actions.move_to_top,
                },
            },
        },
    },
})
