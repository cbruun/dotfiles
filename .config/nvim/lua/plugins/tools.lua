return {
  -- Extra tools via mason
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "shellcheck",
        "shfmt",
        "stylua",
        "markdownlint-cli2",
      })
    end,
  },
}
