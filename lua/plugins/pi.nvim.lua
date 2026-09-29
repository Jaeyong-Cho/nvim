return {
	"alex35mil/pi.nvim",
	-- Optional: required only for `:PiPasteImage` (clipboard image paste).
	dependencies = {
		"HakonHarnes/img-clip.nvim",
	},
	opts = {
		},
	config = function(_, opts)
		require("pi").setup(opts)

		vim.keymap.set({ "n", "v" }, "<leader>pp", function()
			vim.cmd("Pi layout=side")
		end, { desc = "Pi: open side chat" })
		vim.keymap.set({ "n", "v" }, "<leader>pf", function()
			vim.cmd("Pi layout=float")
		end, { desc = "Pi: open floating chat" })
		vim.keymap.set({ "n", "v" }, "<leader>pc", "<Cmd>PiContinue<CR>", { desc = "Pi: continue session" })
		vim.keymap.set({ "n", "v" }, "<leader>pr", "<Cmd>PiResume<CR>", { desc = "Pi: resume session" })
		vim.keymap.set({ "n", "v" }, "<leader>pn", "<Cmd>PiNewSession<CR>", { desc = "Pi: new session" })
		vim.keymap.set({ "n", "v" }, "<leader>pm", "<Cmd>PiSendMention<CR>", { desc = "Pi: mention file/selection" })
		vim.keymap.set({ "n", "v" }, "<leader>ps", "<Cmd>PiSelectModel<CR>", { desc = "Pi: select model" })
		vim.keymap.set({ "n", "v" }, "<leader>pt", "<Cmd>PiSelectThinking<CR>", { desc = "Pi: select thinking level" })
	end,
}
