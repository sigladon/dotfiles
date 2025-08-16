return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  opts = {
   flavour = "latte",
  },
  config = function()
    vim.cmd.colorscheme "catppuccin-latte"
  end,
}
