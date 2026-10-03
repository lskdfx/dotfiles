return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "glsl" })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      vim.filetype.add({
        extension = {
          fsh = "glsl",
          vsh = "glsl",
        },
      })
    end,
  },
}
