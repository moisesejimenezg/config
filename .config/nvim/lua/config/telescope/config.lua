local actions = require("telescope.actions")
require("telescope").setup({
    defaults = {
        file_ignore_patterns = {
            "build/",
            "install/",
            "log/",
        },
    },
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
