return {
	"ThorstenRhau/token",
	lazy = false,
	priority = 1000,
	---@type token.Config
	opts = {
		-- Clear base UI surfaces while preserving semantic backgrounds.
		transparent = false,

		-- Set Neovim's ANSI terminal palette when the colorscheme loads.
		terminal_colors = true,

		-- Give inactive windows a quieter foreground and background.
		dim_inactive = true,

		-- Disable an attribute globally, including in overrides and plugin groups.
		attributes = {
			bold = true,
			italic = true,
			underline = true,
			undercurl = true,
			strikethrough = true,
		},

		-- Overlay attributes on semantic highlight categories.
		styles = {
			booleans = {},
			comments = {},
			conditionals = {},
			constants = {},
			functions = {},
			keywords = {},
			loops = {},
			numbers = {},
			operators = {},
			preprocessor = {},
			properties = {},
			strings = {},
			types = {},
			variables = {},
		},

		-- Apply shared colors first, then the active background variant.
		colors = { all = {}, dark = {}, light = {} },

		-- Replace complete highlight definitions; variant entries take precedence.
		highlights = { all = {}, dark = {}, light = {} },

		-- Integrations are opt-in. `all = true` restores v1 behavior.
		plugins = {
			all = true,
		},
	},
	config = function(_, opts)
		require("token").setup(opts)
		vim.cmd.colorscheme("token")
	end,
}
