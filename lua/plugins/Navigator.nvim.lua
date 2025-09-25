-- Plugin: numToStr/Navigator.nvim
-- Installed via store.nvim

return {
    "numToStr/Navigator.nvim",
    config = function()
        require("Navigator").setup(
        )
    end,
    event = "VeryLazy"
}

