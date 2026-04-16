return {
    "sudo-tee/opencode.nvim",
    config = function()
        require("opencode").setup({
            preferred_picker = "fzf",
            preferred_completion = "nvim-cmp",
            keymap_prefix = "<leader>o",
        })
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
                anti_conceal = { enabled = false },
                file_types = { "markdown", "opencode_output" },
            },
            ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
        },
        "ibhagwan/fzf-lua",
        "hrsh7th/nvim-cmp",
    },
}
