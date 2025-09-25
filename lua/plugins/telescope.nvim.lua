-- Plugin: nvim-telescope/telescope.nvim
-- Installed via store.nvim

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        {
            "nvim-lua/plenary.nvim"
        }
    },
    event = "VeryLazy"
}