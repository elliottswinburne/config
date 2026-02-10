return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
    })

    vim.cmd.colorscheme("tokyonight-night")

  end,
}
