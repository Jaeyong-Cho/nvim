-- Plugin: nvimdev/dashboard-nvim
-- Installed via store.nvim

return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup {}
    end,
    dependencies = {
        {
            "nvim-tree/nvim-web-devicons"
        }
    }
}