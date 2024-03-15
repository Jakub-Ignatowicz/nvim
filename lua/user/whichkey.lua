local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    w = { "<cmd>lua vim.lsp.buf.format()<CR><cmd>w<CR>", "Save and format" },
    W = { "<cmd>w<CR>", "Save" },
    h = { "<cmd>nohlsearch<CR>", "NOHL" },
    v = { "<cmd>vsplit<CR>", "Split" },
    m = { "<cmd>Mason<CR>", "Mason" },
    b = { name = "Buffers" },
    d = { name = "Debug" },
    f = { name = "Find" },
    g = { name = "Git" },
    l = { name = "LSP" },
    p = { name = "Plugins" },
    t = { name = "Test" },
    q = {
      name = "Quit",
      q = { "<cmd>confirm q<CR>", "Quit" },
      Q = { "<cmd>qa!<CR>", "Force quit all" },
      w = { "<cmd>wq<CR>", "Save and quit" },
      W = { "<cmd>wqa!<CR>", "Save and force quit all" },
      f = { "<cmd>lua vim.lsp.buf.format()<CR><cmd>wq<CR>", "Format, save and quit" },
      F = { "<cmd>lua vim.lsp.buf.format()<CR><cmd>wqa!<CR>", "Format, save and force quit all" },
    },
    a = {
      name = "Tab",
      n = { "<cmd>$tabnew<cr>", "New Empty Tab" },
      N = { "<cmd>tabnew %<cr>", "New Tab" },
      o = { "<cmd>tabonly<cr>", "Only" },
      h = { "<cmd>-tabmove<cr>", "Move Left" },
      l = { "<cmd>+tabmove<cr>", "Move Right" },
    },
    T = { name = "Treesitter" },
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    window = {
      border = "rounded",
      position = "bottom",
      padding = { 2, 2, 2, 2 },
    },
    ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  which_key.register(mappings, opts)
end

return M
