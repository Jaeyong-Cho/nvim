return {
    "Cannon07/code-preview.nvim",
    config = function()
        require(
            "code-preview"
        ).setup()

        vim.o.autoread = true
        vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
            command = "checktime",
        })
    end
}
