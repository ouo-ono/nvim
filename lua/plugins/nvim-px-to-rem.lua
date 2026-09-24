-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
  "jsongerber/nvim-px-to-rem",
  config = function()
    require("nvim-px-to-rem").setup({
      opts = {
        root_font_size = 16,
        decimal_count = 4,
        show_virtual_text = true,
        add_cmp_source = false,
        filetypes = {
          "css",
          "scss",
          "sass",
        },
      },
    })
  end,
}
