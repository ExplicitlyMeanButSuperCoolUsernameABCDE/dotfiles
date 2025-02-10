return {
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    lazy = true,
    config = function()
      require("dracula").setup({
        transparent_bg = true,
      })
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      require("vscode").setup({
        transparent = true,
      })
    end,
  },
  {
    "dgox16/oldworld.nvim",
    priority = 1000,
    config = function()
      require("oldworld").setup({
        terminal_colors = true,
        transparent_bg = true,
      })
    end,
  },
  {
    "mellow-theme/mellow.nvim",
    config = function()
      vim.g.mellow_transparent = true
      vim.cmd([[colorscheme mellow]])
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "mellow",
    },
  },
}
