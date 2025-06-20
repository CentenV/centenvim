local lang_conf = {}

lang_conf.ensure_installed = {
  -- LSPs
  "lua_ls",
  "pyright",
}

function lang_conf.load_languages()
  local blink_capabilities = require("blink.cmp").get_lsp_capabilities()

  -- Languages --
  -- JSON
  require("lspconfig").jsonls.setup { capabilities = blink_capabilities }
  -- Lua
  require("lspconfig").lua_ls.setup { capabilities = blink_capabilities }
  -- Python
  require("lspconfig").pyright.setup { capabilities = blink_capabilities }
end

return lang_conf
