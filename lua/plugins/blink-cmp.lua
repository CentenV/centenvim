return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets' },
  build = "cargo +nightly build --release",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    keymap = {
      preset = "super-tab",
      ["<CR>"] = { "select_and_accept", "fallback"},
      ["<Esc>"] = { "hide", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = { documentation = { auto_show = true } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
