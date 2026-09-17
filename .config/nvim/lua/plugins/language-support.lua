-- LazyVim "extras" handle most of the setup (lspconfig, treesitter, mason, etc.)
return {
  -- TypeScript / JavaScript / TSX
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- JSON (jsonls + schemastore, includes some k8s schema support)
  { import = "lazyvim.plugins.extras.lang.json" },

  -- TOML
  { import = "lazyvim.plugins.extras.lang.toml" },

  -- Python (pyright + ruff)
  { import = "lazyvim.plugins.extras.lang.python" },

  -- Rust (rustaceanvim)
  { import = "lazyvim.plugins.extras.lang.rust" },

  -- Terraform / OpenTofu
  { import = "lazyvim.plugins.extras.lang.terraform" },

  -- YAML (+ schemastore for k8s CRDs etc.)
  { import = "lazyvim.plugins.extras.lang.yaml" },

  -- Markdown (markdownlint, marksman, render-markdown)
  { import = "lazyvim.plugins.extras.lang.markdown" },
  -- HTML/CSS tooling now ships with the typescript/tailwind extras (no separate html extra anymore)

  -- Gleam
  { import = "lazyvim.plugins.extras.lang.gleam" },

  -- Helm (Kubernetes templates) + Dockerfile/Containerfile/compose
  { import = "lazyvim.plugins.extras.lang.helm" },
  { import = "lazyvim.plugins.extras.lang.docker" },

  -- Extra treesitter parsers not covered by the extras above
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "css",
        "dockerfile",
        "go",
        "html",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "rust",
        "terraform",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      })
    end,
  },

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
