-- Provides the Format and FormatWrite commands
require('formatter').setup {
    logging = true,
    filetype = {
        cpp = {
            function()
                local uncrustify =
                require('formatter.filetypes.cpp').uncrustify()

                local code_style = vim.fn.findfile('ament_code_style.cfg', '/home/moises.jimenez/ade-home/gc/apex_ws/src/apex_tools/ament/**')
                if code_style and code_style:len() > 0 then
                    table.insert(uncrustify["args"], 1, code_style)
                    table.insert(uncrustify["args"], 1, "-c")
                end
                return uncrustify
            end,
        },
        python = {
            require 'formatter.filetypes.python'.autopep8,
            require 'formatter.filetypes.python'.isort,
            require 'formatter.filetypes.python'.black,
        },
    }
}
