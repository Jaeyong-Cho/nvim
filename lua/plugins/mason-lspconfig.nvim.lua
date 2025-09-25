-- Plugin: mason-org/mason-lspconfig.nvim
-- Installed via store.nvim

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {}
        },
        "neovim/nvim-lspconfig"
    }
}