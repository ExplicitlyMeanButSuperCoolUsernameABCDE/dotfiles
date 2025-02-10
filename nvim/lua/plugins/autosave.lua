return {
  {
    "okuuva/auto-save.nvim",
    version = "^1.0.0",
    -- cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = true,
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend", "InsertLeave" },
        defer_save = { "TextChanged" },
        cancel_deferred_save = { "InsertEnter" },
      },
    },
  },
}
