-- Plugin: NeogitOrg/neogit
-- Installed via store.nvim

return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "ibhagwan/fzf-lua",
    },
    opts = {
        integrations = {
            diffview = true,
            fzf_lua = true,
        },
        graph_style = "unicode",
    },
}