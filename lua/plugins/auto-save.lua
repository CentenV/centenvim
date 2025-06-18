return {
  "okuuva/auto-save.nvim",
  version = "*",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend" },
      defer_save = { "InsertLeave", "TextChanged" },
      cancel_deferred_save = { "InsertEnter" },
      write_all_buffers = false,
      noautocmd = false,
      debounce_delay = 0,
    },
  },
}
