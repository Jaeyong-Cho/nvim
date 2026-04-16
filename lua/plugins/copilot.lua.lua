-- Plugin: zbirenbaum/copilot.lua
-- Installed via store.nvim

return {
    "zbirenbaum/copilot.lua",
    dependencies = {
        "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    },
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        -- Suppress notifications when no Copilot licence is active
        local orig_notify = vim.notify
        vim.notify = function(msg, level, opts)
            if type(msg) == "string" and msg:lower():match("copilot") and
               (msg:lower():match("not signed in") or msg:lower():match("license") or
                msg:lower():match("could not connect") or msg:lower():match("unauthorized") or
                msg:lower():match("github copilot")) then
                return
            end
            return orig_notify(msg, level, opts)
        end

        require("copilot").setup(
            {
		    suggestion = {
			    auto_trigger = true,
			    keymap = {
				    accept = "<C-f>",
				    accept_word = "<C-l>",
				    accept_line = "<C-j>",
				    next = "<C-]>",
				    prev = "<C-[>",
                    dismiss = "<C-c>",
			    },
		    },
			filetypes = {
					["*"] = true,
			}
	    }
        )
    end
}
