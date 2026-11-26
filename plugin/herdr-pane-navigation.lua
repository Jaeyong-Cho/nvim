local id = vim.env.HC_TERMINAL_ID
if not id or not id:match("^t[0-9a-z]+$") or vim.env.HERDR_ENV == "1" then
    return
end

local socket_dir = vim.env.HOME .. "/.cache/herdr-yong"
vim.fn.mkdir(socket_dir, "p", 448)

function _G.HerdrYongNavigate(key)
    if not key:match("^[hjkl]$") or vim.api.nvim_get_mode().mode ~= "n" then
        return "pass"
    end

    local before = vim.api.nvim_get_current_win()
    vim.cmd.wincmd(key)
    return before == vim.api.nvim_get_current_win() and "edge" or "moved"
end

vim.fn.serverstart(socket_dir .. "/" .. id .. ".sock")
