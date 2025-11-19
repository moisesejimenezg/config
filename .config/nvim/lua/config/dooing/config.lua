require("dooing").setup({
    -- Per-project todos
    per_project = {
        enabled = true, -- Enable per-project todos
        default_filename = "dooing.json", -- Default filename for project todos
        auto_gitignore = false, -- Auto-add to .gitignore (true/false/"prompt")
        on_missing = "prompt", -- What to do when file missing ("prompt"/"auto_create")
        auto_open_project_todos = false, -- Auto-open project todos on startup if they exist
    },
})
