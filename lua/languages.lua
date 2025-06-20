local lang_conf = {}

lang_conf.ensure_installed = {
  -- LSPs
  "bashls",
  "cssls",
  "css_variables",
  "docker_compose_language_service",
  "dockerls",
  "eslint",
  "gh_actions_ls",
  "gitlab_ci_ls",
  "jdtls",
  "jsonls",
  "lua_ls",
  "marksman",
  "pyright",
  "postgres_lsp",
  "prismals",
  "rust_analyzer",
  "tailwindcss",
  "ts_ls",
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
