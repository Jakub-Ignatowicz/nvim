local M = {
  "folke/which-key.nvim",
}

function M.config()
  local which_key = require "which-key"
  which_key.setup {
    defaults = {
      mode = "n",
      prefix = "<leader>",
    },
    spec = {
      { "<leader>T", group = "Treesitter" },
      { "<leader>W", "<cmd>w<CR>", desc = "Save" },
      { "<leader>a", group = "Tab" },
      { "<leader>aN", "<cmd>tabnew %<cr>", desc = "New Tab" },
      { "<leader>ah", "<cmd>tabprevious<cr>", desc = "Move Left" },
      { "<leader>al", "<cmd>tabnext<cr>", desc = "Move Right" },
      { "<leader>an", "<cmd>$tabnew<cr>", desc = "New Empty Tab" },
      { "<leader>ao", "<cmd>tabonly<cr>", desc = "Only" },
      { "<leader>b", group = "Buffers" },
      { "<leader>d", group = "Debug" },
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git" },
      { "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
      { "<leader>l", group = "LSP" },
      { "<leader>m", "<cmd>Mason<CR>", desc = "Mason" },
      { "<leader>p", group = "Plugins" },
      { "<leader>q", group = "Quit" },
      { "<leader>qF", "<cmd>lua vim.lsp.buf.format()<CR><cmd>wqa!<CR>", desc = "Format, save and force quit all" },
      { "<leader>qQ", "<cmd>qa!<CR>", desc = "Force quit all" },
      { "<leader>qW", "<cmd>wqa!<CR>", desc = "Save and force quit all" },
      { "<leader>qf", "<cmd>lua vim.lsp.buf.format()<CR><cmd>wq<CR>", desc = "Format, save and quit" },
      { "<leader>qq", "<cmd>confirm q<CR>", desc = "Quit" },
      { "<leader>qw", "<cmd>wq<CR>", desc = "Save and quit" },
      { "<leader>t", group = "Test" },
      { "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
      { "<leader>w", "<cmd>lua vim.lsp.buf.format()<CR><cmd>w<CR>", desc = "Save and format" },
    },
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
    win = {
      padding = { 2, 2, 2, 2 },
      border = "rounded",
    },
    -- ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }
end

return M
