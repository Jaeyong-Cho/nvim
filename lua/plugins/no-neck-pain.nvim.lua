return {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
        opts = {
        width = 150,
        },
        config = function(_, opts)
                require("no-neck-pain").setup(opts)
                vim.api.nvim_create_autocmd("VimEnter", {
                        command = "NoNeckPain"
                })
        end,
}
