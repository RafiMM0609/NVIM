return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    flavour = "auto",
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}
