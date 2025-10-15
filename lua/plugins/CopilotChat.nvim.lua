-- Plugin: CopilotC-Nvim/CopilotChat.nvim
-- Installed via store.nvim

return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{
			"nvim-lua/plenary.nvim",
			branch = "master",
		},
	},
	build = "make tiktoken",
	opts = {
		model = "claude-sonnet-4.5",
	},
}
