require("config.lazy")

vim.cmd.colorscheme("kanagawa-paper-ink")

-- encoding
vim.opt.encoding = "utf-8"
-- backup
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.keymap.set({ "n", "t" }, "<C-h>", ":NavigatorLeft<CR>")
vim.keymap.set({ "n", "t" }, "<C-l>", ":NavigatorRight<CR>")
vim.keymap.set({ "n", "t" }, "<C-k>", ":NavigatorUp<CR>")
vim.keymap.set({ "n", "t" }, "<C-j>", ":NavigatorDown<CR>")
vim.keymap.set({ "n", "t" }, "<C-p>", ":NavigatorPrevious<CR>")

vim.keymap.set({ "n", "t" }, "<leader>ff", ":FzfLua files<CR>")
vim.keymap.set({ "n", "t" }, "<leader>cc", ":CopilotChat<CR>")
vim.keymap.set({ "n", "t" }, "<leader>gg", ":Neogit<CR>")

vim.keymap.set({ "i", "t" }, "jk", "<ESC>:w<CR>")

vim.keymap.set("n", "<TAB>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- keymap for hop to f
vim.keymap.set("n", "f", ":HopWord<CR>")
