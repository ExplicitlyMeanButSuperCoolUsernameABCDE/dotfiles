-- File: ~/.config/nvim/lua/plugins/notify.lua
return {
  "rcarriga/nvim-notify", -- plugin identifier
  opts = {
    background_colour = "#FFC0CB", -- soft pink background for that "girlly" vibe
    fps = 30,
    icons = {
      ERROR = "💔",
      WARN = "💖",
      INFO = "🌸",
      DEBUG = "✨",
      TRACE = "🦋",
    },
    level = "info", -- Only show notifications of 'info' level or higher
    stages = "slide", -- Use the built-in slide animation
    render = "default", -- Use the default rendering style
    timeout = 5000, -- Auto-dismiss notifications after 5 seconds
    top_down = false, -- Stack notifications from the bottom upward
  },
  config = function(_, opts)
    -- Set up nvim-notify with the options provided
    require("notify").setup(opts)
    -- Overwrite the default vim.notify so that all notifications use our customized setup
    vim.notify = require("notify")

    -- Create an autocommand to show a welcome message when Neovim starts up
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.notify("Welcome to your girl-powered LazyVim setup!", "info", { title = "Welcome" })
      end,
    })
  end,
}
