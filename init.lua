require("config.lazy")

vim.cmd.colorscheme("kanagawa-paper-ink")

vim.opt.clipboard = "unnamedplus"

vim.keymap.set({'n', 't'}, '<C-h>', ':NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<C-l>', ':NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<C-k>', ':NavigatorUp<CR>')
vim.keymap.set({'n', 't'}, '<C-j>', ':NavigatorDown<CR>')
vim.keymap.set({'n', 't'}, '<C-p>', ':NavigatorPrevious<CR>')

vim.keymap.set({'n', 't'}, '<leader>ff', ':FzfLua files<CR>')

vim.keymap.set({'n', 't'}, '<leader>cc', ':CopilotChat<CR>')

vim.keymap.set({'n', 't'}, '<leader>gg', ':Neogit<CR>')
