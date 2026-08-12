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
  -- Use global php-cs-fixer config
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        php_cs_fixer = {
          append_args = {
            "--config=" .. vim.fn.expand("~/.config/php-cs-fixer/config.php"),
          },
        },
      },
    },
  },
  -- Disable php-cs-fixer
  -- {
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = {
  --       php = {},
  --     },
  --   },
  -- },
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
