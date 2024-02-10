local types = require("luasnip.util.types")
local ls = require("luasnip")

ls.setup({
	keep_roots = true,
	link_roots = true,
	link_children = true,

	-- Update more often, :h events for more info.
	update_events = "TextChanged,TextChangedI",
	-- Snippets aren't automatically removed if their text is deleted.
	-- `delete_check_events` determines on which events (:h events) a check for
	-- deleted snippets is performed.
	-- This can be especially useful when `history` is enabled.
	delete_check_events = "TextChanged",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "choiceNode", "Comment" } },
			},
		},
	},
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
	-- mapping for cutting selected text so it's usable as SELECT_DEDENT,
	-- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
	store_selection_keys = "<Tab>",
	-- luasnip uses this function to get the currently active filetype. This
	-- is the (rather uninteresting) default, but it's possible to use
	-- eg. treesitter for getting the current filetype by setting ft_func to
	-- require("luasnip.extras.filetype_functions").from_cursor (requires
	-- `nvim-treesitter/nvim-treesitter`). This allows correctly resolving
	-- the current filetype in eg. a markdown-code block or `vim.cmd()`.
	ft_func = function()
		return vim.split(vim.bo.filetype, ".", true)
	end,
})

-- Make sure to not pass an invalid command, as io.popen() may write over nvim-text.
local function bash(_, _, command)
	local file = io.popen(command, "r")
	local res = {}
	for line in file:lines() do
		table.insert(res, line)
	end
	return res
end

-- Define a function to get the current file name
local function get_filename()
	return vim.fn.expand("%:t") -- This gets the file name without the path
end

-- Define a function to get the current line number
local function get_line_number()
	return tostring(vim.fn.line("."))
end

-- Returns a snippet_node wrapped around an insertNode whose initial
-- text value is set to the current date in the desired format.
local date_input = function(args, snip, old_state, fmt)
	local fmt = fmt or "%Y-%m-%d"
	return sn(nil, i(1, os.date(fmt)))
end

local function copy(args)
	return args[1]
end

local cpp_logging = ls.snippet("log", {
	ls.text_node('std::cout << "MJ_LOG: '),
	ls.function_node(get_filename),
	ls.text_node("@"),
	ls.function_node(get_line_number),
	ls.text_node(": "),
	ls.insert_node(1, "variable"),
	ls.text_node(': " << '),
	ls.function_node(copy, 1),
	ls.text_node(" << std::endl;"),
})

local cpp_message = ls.snippet("msg", {
	ls.text_node('std::cout << "MJ_LOG: '),
	ls.function_node(get_filename),
	ls.text_node("@"),
	ls.function_node(get_line_number),
	ls.text_node(": "),
	ls.insert_node(1, "message"),
	ls.text_node('" << std::endl;'),
})

ls.add_snippets("cpp", {
	cpp_logging,
	cpp_message,
}, {
	key = "cpp",
})

local rust_logging = ls.snippet("log", {
	ls.text_node('println!("MJ_LOG: '),
	ls.function_node(get_filename),
	ls.text_node("@"),
	ls.function_node(get_line_number),
	ls.text_node(": "),
	ls.insert_node(1, "variable"),
	ls.text_node(': {}", '),
	ls.function_node(copy, 1),
	ls.text_node(");"),
})

local rust_message = ls.snippet("msg", {
	ls.text_node('println!("MJ_LOG: '),
	ls.function_node(get_filename),
	ls.text_node("@"),
	ls.function_node(get_line_number),
	ls.text_node(": "),
	ls.insert_node(1, "message"),
	ls.text_node('");'),
})

ls.add_snippets("rust", {
	rust_logging,
	rust_message,
}, {
	key = "rust",
})

local python_logging = ls.snippet("log", {
	ls.text_node('print("MJ_LOG: '),
	ls.function_node(get_filename),
	ls.text_node("@"),
	ls.function_node(get_line_number),
	ls.text_node(": "),
	ls.insert_node(1, "variable"),
	ls.text_node(':", '),
	ls.function_node(copy, 1),
	ls.text_node(")"),
})

local python_message = ls.snippet("msg", {
	ls.text_node('print("MJ_LOG: '),
	ls.function_node(get_filename),
	ls.text_node("@"),
	ls.function_node(get_line_number),
	ls.text_node(": "),
	ls.insert_node(1, "message"),
	ls.text_node('")'),
})

ls.add_snippets("python", {
	python_logging,
	python_message,
}, {
	key = "python",
})

ls.add_snippets("all", {
	ls.snippet("autotrigger", {
		ls.text_node("autosnippet"),
	}),
}, {
	type = "autosnippets",
	key = "all_auto",
})

-- in a cpp file: search c-snippets, then all-snippets only (no cpp-snippets!!).
ls.filetype_extend("cpp", { "c" })

vim.keymap.set({ "i" }, "<C-K>", function()
	ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function()
	ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function()
	ls.jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })
