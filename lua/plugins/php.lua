return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          init_options = {
            ["indexer.stub_paths"] = {
              vim.fn.expand("~/.local/share/stubs/php/gcb-stubs"),
              vim.fn.expand("~/.local/share/stubs/php/gravity-forms-stubs"),
              vim.fn.expand("~/.local/share/stubs/php/wordpress-stubs"),
            },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.php = { "prettier" }

      opts.formatters = opts.formatters or {}
      opts.formatters.prettier = vim.tbl_deep_extend("force", opts.formatters.prettier or {}, {
        condition = function()
          return true
        end,
        append_args = {
          "--plugin",
          vim.fn.expand("~/.local/share/prettier-plugins/node_modules/@prettier/plugin-php/src/index.mjs"),
        },
      })
    end,
  },
  -- Disable phpcs
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        php = {},
      },
    },
  },
}
