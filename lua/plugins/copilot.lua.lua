-- Plugin: zbirenbaum/copilot.lua
-- Installed via store.nvim

return {
    "zbirenbaum/copilot.lua",
    dependencies = {
        "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
	"zbirenbaum/copilot-cmp"
    },
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup(
            {
		    suggestion = {
			    auto_trigger = true,
			    keymap = {
				    accept = "<TAB>",
				    accept_word = "<C-l>",
				    accept_line = "<C-j>",
				    next = "<C-]>",
				    prev = "<C-[>",
                    dismiss = "<C-e>",
			    },
		    }
	    }
        )
    end
}
