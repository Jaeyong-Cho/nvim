-- Plugin: stevearc/conform.nvim
-- Installed via store.nvim

return {
	"stevearc/conform.nvim",
	opts = {
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		}),
	},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- python = { "black" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				react = { "prettierd" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				["*"] = { "trim_whitespace", "remove_trailing_lines" },
			},
		})
	end,
}
