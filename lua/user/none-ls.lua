local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics

  null_ls.setup {
    debug = false,
    sources = {
      diagnostics.omnisharp,
      diagnostics.html,
      diagnostics.bacon,
      formatting.bacon,
      formatting.asmfmt,
      formatting.omnisharp,
      formatting.html,
      formatting.stylua,
      formatting.prettier,
      formatting.black,
    },
  }
end

return M
