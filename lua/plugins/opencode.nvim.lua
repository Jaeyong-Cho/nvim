return {
    "sudo-tee/opencode.nvim",
    config = function()
        require("opencode").setup({
            preferred_picker = "fzf",
            preferred_completion = "nvim-cmp",
            keymap_prefix = "<leader>o",
            default_mode = "sisyphus",
            keymap = {
                output_window = {
                    ["<esc>"] = { function() end },
                },
                input_window = {
                    ["<esc>"] = { function() end, defer_to_completion = true },
                },
            },
            output = {
                filetype = 'opencode_output', -- Filetype assigned to the output buffer (default: 'opencode_output')
                compact_assistant_headers = false, -- 'full' (default), 'minimal' (compact if same mode), or 'hidden' (no headers for assistant)
                tools = {
                    show_output = true, -- Show tools output [diffs, cmd output, etc.] (default: true)
                    show_reasoning_output = true, -- Show reasoning/thinking steps output (default: true)
                },
                rendering = {
                    markdown_debounce_ms = 100, -- Debounce time for markdown rendering on new data (default: 250ms)
                    on_data_rendered = false, -- Called when new data is rendered; set to false to disable default RenderMarkdown/Markview behavior
                },
                max_messages = nil, -- Max number of messages to keep in the output buffer; older messages will be removed as new ones arrive (default: nil, which means no limit)
            },
            input = {
                min_height = 0.10, -- min height of prompt input as percentage of window height
                max_height = 0.25, -- max height of prompt input as percentage of window height
                text = {
                    wrap = true, -- Wraps text inside input window
                },
                -- Auto-hide input window when prompt is submitted or focus switches to output window
                auto_hide = true,
            },
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
