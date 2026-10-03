-- plugins/inline_git_blame.nvim
return {
  "yt20chill/inline_git_blame.nvim",
  event = "BufReadPost",
  -- optional, default settings
  opts = {
    -- excluded_filetypes will be extended from default
    excluded_filetypes = { "NvimTree", "neo-tree", "TelescopePrompt", "help" },
    debounce_ms = 150,
    autocmd = true,
    you_label = "You", -- can be any string, or false to disable replacement
  },
  -- optional, default no keybindings because autocmds are preferred
  keys = {
    {
      "<leader>gb",
      "<cmd>lua require('inline_git_blame').inline_blame_current_line()<CR>",
      desc = "Show inline git blame",
    },
    { "<leader>gB", "<cmd>lua require('inline_git_blame').clear_blame()<CR>", desc = "Clear inline git blame" },
    {
      "<leader>gt",
      "<cmd>lua require('inline_git_blame').toggle_blame_current_line()<CR>",
      desc = "Toggle inline git blame",
    },
  },
}
