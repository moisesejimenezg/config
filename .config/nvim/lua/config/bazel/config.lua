local bazel = require("bazel")
vim.keymap.set("n", "gbt", vim.fn.GoToBazelTarget, { desc = "Goto Bazel Build File" })
