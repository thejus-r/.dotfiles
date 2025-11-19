return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  init = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = {
        transparent = true
      }
    })
    vim.cmd("colorscheme catppuccin")
  end
}
