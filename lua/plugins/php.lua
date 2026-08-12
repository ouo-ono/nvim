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
}
