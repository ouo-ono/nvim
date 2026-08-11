return {
  {
    "mason-org/mason.nvim",
    opts = {
      intelephense = {
        settings = {
          intelephense = {
            environment = {
              includePaths = {
                vim.fn.stdpath("config") .. "/stubs/php",
                os.getenv("HOME") .. "/.temp/wp_plugins/",
              },
            },
            stubs = {
              "wordpress",
              "wordpress-globals",
              "genesis",
              "gravity-forms",
            },
            files = {
              maxSize = 5000000,
            },
          },
          initializationOptions = {
            storagePath = vim.fn.stdpath("cache") .. "/intelephense",
            logLevel = 4,
          },
        },
      },
    },
  },
}
