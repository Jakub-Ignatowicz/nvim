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
      formatting.stylua,
      formatting.prismals,
      formatting.cssls,
      formatting.biome,
      formatting.asmfmt,
      formatting.stylua,
      formatting.prettier,
      formatting.black,
      diagnostics.prismals,
      diagnostics.tailwindcss,
      diagnostics.cssls,
      diagnostics.clangd,
    },
  }
end

return M
