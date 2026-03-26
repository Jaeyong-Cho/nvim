require("config.lazy")

vim.cmd.colorscheme("kanagawa-paper-ink")

-- encoding
vim.opt.encoding = "utf-8"
-- backup
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})
-- cursor line
vim.opt.cursorline = true
-- search highlight
vim.opt.hlsearch = true
vim.opt.incsearch = true
-- scrolloff 20 percent of screen height
vim.opt.scrolloff = math.floor(vim.o.lines * 0.2)
-- signcolumn
vim.opt.signcolumn = "yes"

vim.keymap.set({ "n", "t" }, "<C-h>", ":NavigatorLeft<CR>")
vim.keymap.set({ "n", "t" }, "<C-l>", ":NavigatorRight<CR>")
vim.keymap.set({ "n", "t" }, "<C-k>", ":NavigatorUp<CR>")
vim.keymap.set({ "n", "t" }, "<C-j>", ":NavigatorDown<CR>")
-- vim.keymap.set({ "n", "t" }, "<leader>ww", ":NavigatorPrevious<CR>")

vim.keymap.set({ "n", "t" }, "<leader>ff", ":FzfLua files<CR>")
vim.keymap.set({ "n", "t" }, "<leader>cc", ":CopilotChat<CR>")
vim.keymap.set({ "n", "t" }, "<leader>cm", ":CopilotChatCommit<CR>")
vim.keymap.set({ "n", "t" }, "<leader>gg", ":Neogit<CR>")
vim.keymap.set({ "n", "t" }, "<leader>cp", ":ColorPickOklch<CR>")

vim.keymap.set({ "i", "t" }, "jk", "<ESC>:w<CR>")

vim.keymap.set("n", "<TAB>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- keymap for hop to f
vim.keymap.set("n", "f", ":HopWord<CR>")
