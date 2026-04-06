-- Plugin: jakewvincent/mkdnflow.nvim
-- Installed via store.nvim

return {
    "jakewvincent/mkdnflow.nvim",
    ft = {"markdown", "rmd"}, -- Add custom filetypes here if configured
    config = function()
        require("mkdnflow").setup(
            {}
        )
    end
}