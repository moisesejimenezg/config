-- Provides the Format and FormatWrite commands
require("formatter").setup({
    logging = true,
    filetype = {
        c = {
            function()
                local code_style = vim.fn.findfile(
                    "ament_code_style.cfg",
                    "/home/moises.jimenez/ade-home/gc/apex_ws/src/tools/ament/**"
                )
                local uncrustify = require("formatter.filetypes.c").uncrustify()
                table.insert(uncrustify["args"], "-c")
                table.insert(uncrustify["args"], code_style)
                return uncrustify
            end,
        },
        cpp = {
            function()
                local utils = require("formatter.util")
                if string.find(utils.get_current_buffer_file_path(), "apex_customer") then
                    return nil
                end
                if string.find(utils.get_current_buffer_file_path(), "repos/third_party") then
                    return nil
                end
                local code_style = vim.fn.findfile(
                    "ament_code_style.cfg",
                    "/home/moises.jimenez/ade-home/gc/apex_ws/src/tools/ament/**"
                )
                local uncrustify = require("formatter.filetypes.cpp").uncrustify()
                table.insert(uncrustify["args"], "-c")
                table.insert(uncrustify["args"], code_style)
                return uncrustify
            end,
        },
        python = {
            --require("formatter.filetypes.python").autopep8,
            --require("formatter.filetypes.python").isort,
            --require("formatter.filetypes.python").black,
            require("formatter.filetypes.python").flake8,
        },
        lua = {
            function()
                local luastyle = vim.fn.findfile("stylua.toml", "/home/moises.jimenez/formatting/**")
                return {
                    exe = "stylua",
                    args = {
                        "-f",
                        luastyle,
                    },
                }
            end,
        },
    },
})
vim.api.nvim_create_autocmd("BufWritePost", { command = "FormatWrite" })
