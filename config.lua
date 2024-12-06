-- doom_config - Doom Nvim user configurations file
--
-- This file contains the user-defined configurations for Doom nvim.
-- Just override stuff in the `doom` global table (it's injected into scope
-- automatically).

-- ADDING A PACKAGE
--

doom.use_package("rebelot/kanagawa.nvim")
doom.use_package("onsails/lspkind.nvim")
doom.use_package("lifepillar/vim-colortemplate")
doom.use_package("github/copilot.vim")

doom.use_package({
  "hadronized/hop.nvim",
  config = function()
    local hop = require('hop')
    hop.setup()
    vim.keymap.set('', 'f', ':HopWord<CR>')
  end
})

doom.use_package("zbirenbaum/copilot.lua")
doom.use_package("nvim-lua/plenary.nvim")
doom.use_package({
  "CopilotC-Nvim/CopilotChat.nvim",
  config = function()
    require("CopilotChat.integrations.cmp").setup({})
    require("CopilotChat").setup({
      mappings = {
        complete = {
          insert = '',
        },
      },
    })
    vim.keymap.set('n', '<leader>cc', ':CopilotChat<CR>')
    vim.keymap.set('n', '<leader>ce', ':CopilotChatExplain<CR>')
  end,
})

doom.use_package({
  "weirongxu/plantuml-previewer.vim",
  config = function()
    vim.keymap.set('n', '<leader>pp', ':PlantumlOpen<CR>')
  end,
})
doom.use_package("tyru/open-browser.vim")
doom.use_package("aklt/plantuml-syntax")

doom.use_package({
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = {"markdown", "md", "mkd"}
  end,
  ft = {"markdown", "md", "mkd"},
  config = function()
    vim.keymap.set('n', '<leader>mp', ':MarkdownPreview<CR>')
    vim.keymap.set('n', '<leader>ms', ':MarkdownPreviewStop<CR>')
    vim.keymap.set('n', '<leader>mt', ':MarkdownPreviewToggle<CR>')
  end,
})

doom.use_package({
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
})

doom.use_package({
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- configuration goes here
    {
      ---@type string
      arg = "leetcode.nvim",

      ---@type lc.lang
      lang = "cpp",

      cn = { -- leetcode.cn
        enabled = false, ---@type boolean
        translator = true, ---@type boolean
        translate_problems = true, ---@type boolean
      },

      ---@type lc.storage
      storage = {
        home = vim.fn.stdpath("data") .. "/leetcode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },

      ---@type table<string, boolean>
      plugins = {
        non_standalone = false,
      },

      ---@type boolean
      logging = true,

      injector = {}, ---@type table<lc.lang, lc.inject>

      cache = {
        update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
      },

      console = {
        open_on_runcode = true, ---@type boolean

        dir = "row", ---@type lc.direction

        size = { ---@type lc.size
          width = "90%",
          height = "75%",
        },

        result = {
          size = "60%", ---@type lc.size
        },

        testcase = {
          virt_text = true, ---@type boolean

          size = "40%", ---@type lc.size
        },
      },

      description = {
        position = "left", ---@type lc.position

        width = "40%", ---@type lc.size

        show_stats = true, ---@type boolean
      },

      hooks = {
        ---@type fun()[]
        ["enter"] = {},

        ---@type fun(question: lc.ui.Question)[]
        ["question_enter"] = {},

        ---@type fun()[]
        ["leave"] = {},
      },

      keys = {
        toggle = { "q" }, ---@type string|string[]
        confirm = { "<CR>" }, ---@type string|string[]

        reset_testcases = "r", ---@type string
        use_testcase = "U", ---@type string
        focus_testcases = "H", ---@type string
        focus_result = "L", ---@type string
      },

      ---@type lc.highlights
      theme = {},

      ---@type boolean
      image_support = false,
    }
    },
})

doom.use_package({
    "preservim/tagbar",
})
vim.cmd("nmap <F8> :TagbarToggle<CR>")
vim.cmd("autocmd FileType python,c,cpp TagbarOpen")

-- doom.use_package({
--   "ur4ltz/surround.nvim",
--   config = function()
--     require("surround").setup({mappings_style = "sandwich"})
--   end
-- })

-- ADDING A KEYBIND
--
-- doom.use_keybind({
--   -- The `name` field will add the keybind to whichkey
--   {"<leader>s", name = '+search', {
--     -- Bind to a vim command
--     {"g", "Telescope grep_string<CR>", name = "Grep project"},dd
--     -- Or to a lua function
--     {"p", function()
--       print("Not implemented yet")
--     end, name = ""}
--   }}
-- })

-- ADDING A COMMAND
--
-- doom.use_cmd({
--   {"CustomCommand1", function() print("Trigger my custom command 1") end},
--   {"CustomCommand2", function() print("Trigger my custom command 2") end}
-- })

-- ADDING AN AUTOCOMMAND
--
-- doom.use_autocmd({
--   { "FileType", "javascript", function() print('This is a javascript file') end }
-- })

-- vim: sw=2 sts=2 ts=2 expandtab

doom.colorscheme = "kanagawa-dragon"

vim.cmd("set sidescrolloff=15")
vim.cmd("set scrolloff=15")
vim.cmd("set scrolljump=30")
vim.cmd("set tags+=./tags")
vim.cmd("set t_Co=256")

vim.keymap.set('i', '<c-f>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

vim.keymap.set('i', '<c-j>', '<Plug>(copilot-next)', {
  expr = false,
  replace_keycodes = false
})

vim.keymap.set('i', '<c-k>', '<Plug>(copilot-previous)', {
  expr = false,
  replace_keycodes = false
})

vim.g.copilot_no_tab_map = true

doom.use_keybind({
  { mode = 'i', {
    { 'jk', '<Esc>:w<CR>'},
  }}
})
