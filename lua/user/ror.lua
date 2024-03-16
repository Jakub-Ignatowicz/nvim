local M = {
  "weizheheng/ror.nvim",
  dependencies = {
    "stevearc/dressing.nvim",
    "rcarriga/nvim-notify",
  },
}

M.config = function()
  require("ror").setup {
    test = {
      message = {
        file = "Running test file...",
        line = "Running single test...",
      },
      coverage = {
        -- To customize replace with the hex color you want for the highlight
        -- guibg=#354a39
        up = "DiffAdd",
        -- guibg=#4a3536
        down = "DiffDelete",
      },
      notification = {
        -- Using timeout false will replace the progress notification window
        -- Otherwise, the progress and the result will be a different notification window
        timeout = false,
      },
      pass_icon = "✅",
      fail_icon = "❌",
    },
  }
  require("dressing").setup {
    input = {
      min_width = { 60, 0.9 },
    },
    select = {
      -- telescope = require('telescope.themes').get_ivy({...})
      telescope = require("telescope.themes").get_dropdown { layout_config = { height = 15, width = 90 } },
    },
  }

  local wk = require "which-key"
  wk.register {
    ["<leader>r"] = { "<cmd>lua require('ror.commands').list_commands()<cr>", "Ruby" },
  }
end

return M
