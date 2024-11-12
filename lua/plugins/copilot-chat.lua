---@type LazySpec

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      debug = false, -- Disable debugging
      model = "claude-3.5-sonnet",
      mappings = {
        complete = {
          detail = "Use @<Tab> or /<Tab> for options.",
          insert = "<Tab>",
        },
        close = {
          normal = "q",
          insert = "<C-q>",
        },
        reset = {
          normal = "<C-c>",
          insert = "<C-c>",
        },
        submit_prompt = {
          normal = "<CR>",
          insert = "<C-s>",
        },
        accept_diff = {
          normal = "<C-y>",
          insert = "<C-y>",
        },
        yank_diff = {
          normal = "gy",
          register = '"',
        },
        show_diff = {
          normal = "gd",
        },
        show_system_prompt = {
          normal = "gp",
        },
        show_user_selection = {
          normal = "gs",
        },
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      {
        "<leader>cc",
        "<cmd>CopilotChat<CR>",
        desc = "CopilotChat - Open Chat",
      },
      {
        "<leader>cc",
        function()
          local input = vim.fn.input "Chat about the selection: "
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
          end
        end,
        desc = "CopilotChat - Open Chat for Visual mode",
        mode = "v",
      },
      {
        "<leader>cb",
        function()
          local input = vim.fn.input "Chat about the buffer: "
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat",
      },
    },
  },
}
