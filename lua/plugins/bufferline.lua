return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      mode = "buffers",
      indicator = {
        style = "icon",
      },
      separator_style = "thin",
      tab_size = 24,
      diagnostics = "nvim_lsp",
      hover = {
        enabled = true,
        delay = 100,
        reveal = {"close"}
      },
      show_close_icon = false,
    },
  },
}
