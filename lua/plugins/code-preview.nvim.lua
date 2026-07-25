return {
	"Cannon07/code-preview.nvim",
	config = function()
		require("code-preview").setup({
			debug = false, -- enable debug logging to stdpath("log")/code-preview.log
			diff = {
				layout = "tab", -- "tab", "vsplit", or "inline"
				layouts = {}, -- override layout per backend: { opencode = "tab", codex = "vsplit" }
				labels = { current = "CURRENT", proposed = "PROPOSED" },
				equalize = true,
				full_file = true,
				visible_only = false, -- only show diffs for files open in a visible nvim window
				defer_claude_permissions = false, -- when true, skip permissionDecision and let Claude Code's own settings decide
			},
			neo_tree = {
				enabled = true,
				-- reveal = false disables scroll-to-file in the tree. Change indicators
				-- (modified/created/deleted icons) still appear — to disable those too,
				-- set neo_tree.enabled = false.
				reveal = true, -- reveal edited files in neo-tree
				reveal_root = "cwd", -- "cwd" (default) or "git" (nearest git root)
				refresh_on_change = true,
				position = "right",
				symbols = {
					modified = "󰏫",
					created = "󰎔",
					deleted = "󰆴",
				},
				highlights = {
					modified = { fg = "#e8a838", bold = true },
					created = { fg = "#56c8d8", bold = true },
					deleted = { fg = "#e06c75", bold = true, strikethrough = true },
				},
			},
			keys = {
				-- Set any entry to false to skip that binding. Set `keys = false` to skip all.
				-- <Plug>(CodePreviewCloseAll) is always defined so users can map it themselves.
				next_change = "]c", -- buffer-local in inline diff buffers
				prev_change = "[c", -- buffer-local in inline diff buffers
				close_all = "<leader>dq", -- global; close diff and clear indicators
			},
			highlights = {
				current = {
					DiffAdd = { bg = "#ffdada" },
					DiffDelete = { bg = "#ffdada" },
					DiffChange = { bg = "#eee4c6" },
					DiffText = { bg = "#e2dac0" },
				},
				proposed = {
					DiffAdd = { bg = "#daf6d5" },
					DiffDelete = { bg = "#ffdada" },
					DiffChange = { bg = "#eee4c6" },
					DiffText = { bg = "#e2dac0" },
				},
				inline = {
					added = { bg = "#c0d8bc" },
					removed = { bg = "#e8c4c4" },
					added_text = { bg = "#a8c8a2" },
					removed_text = { bg = "#d8aaaa" },
				},
			},
		})
	end,
}

