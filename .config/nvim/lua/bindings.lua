-- Remap leader
vim.g.mapleader = " "

-- Search
vim.keymap.set("n", "<leader>P", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>O", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>i", "<cmd>Telescope grep_string<cr> <escape>")
vim.keymap.set("n", "<leader>I", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>B", "<cmd>Telescope resume<cr>")

-- Move line up /down
vim.keymap.set("n", "<m-j>", ":m .+1<cr>")
vim.keymap.set("n", "<m-k>", ":m .-2<cr>")

-- Navigation
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
vim.keymap.set("n", "<leader>m", "<cmd>NvimTreeFindFile<cr>")

-- Resizing panes
vim.keymap.set("n", "<leader>H", ":vertical resize +5<cr>")
vim.keymap.set("n", "<leader>L", ":vertical resize -5<cr>")
vim.keymap.set("n", "<leader>J", ":resize +2<cr>")
vim.keymap.set("n", "<leader>K", ":resize -2<cr>")

-- Clipboard
vim.keymap.set({ "n", "x" }, "cp", '"+y')
vim.keymap.set({ "n", "x" }, "cv", '"+p')

-- Lsp
vim.keymap.set("n", "<m-i>", "<cmd>lua vim.lsp.buf.hover()<cr>")
vim.keymap.set("n", "<m-o>", ":TroubleToggle<cr>")

-- Hop
hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR })
end, { remap = true })
vim.keymap.set("", "T", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR })
end, { remap = true })
