return {
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs and related tools to stdpath for Neovim
    -- Mason must be loaded before its dependents so we need to set it up here.
    -- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
    { "mason-org/mason-lspconfig.nvim" },
    require("languages.languages")
  },
  config = function()
    require("lspconfig").lua_ls.setup { capabilities = require("blink.cmp").get_lsp_capabilities() }
  end,
}
