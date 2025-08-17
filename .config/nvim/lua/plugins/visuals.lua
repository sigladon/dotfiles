return {
  {
    
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        styles = {
          comments = { "italic", "bold" },
          strings= { "italic" , "bold"},
          numbers = { "italic", "bold" },
          booleans = { "bold", "underdotted" },
          keywords = { "bold", "underline" },
          operators = { "bold" },
        }
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    }
  },
  {
    'echasnovski/mini.icons', version = false
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "bufReadPre",
    opts = {
      user_default_options = {
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        tailwind = true,
        tailwind_opts = {
          update_names = true,
        }
      }
    },
  }
}
