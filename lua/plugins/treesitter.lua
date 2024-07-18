return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        context = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
