t = require("telescope.builtin")
vim.api.nvim_create_user_command("Rd", function(args)
	t.live_grep({ search_dirs = args["fargs"] })
end, { nargs = 1 })
