return {
  -- Extra treesitter parsers not already installed by LazyVim core or the extras enabled in
  -- lazyvim.json
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "css",
      })
    end,
  },
}
