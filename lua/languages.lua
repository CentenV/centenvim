local lang_conf = {}

-- Names via nvim-lspconfig
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
  local lsp = require("lspconfig")

  -- Languages --
  lsp.bashls.setup { capabilities = blink_capabilities }
  lsp.cssls.setup { capabilities = blink_capabilities }
  lsp.css_variables.setup { capabilities = blink_capabilities }
  lsp.docker_compose_language_service.setup { capabilities = blink_capabilities }
  lsp.dockerls.setup { capabilities = blink_capabilities }
  lsp.eslint.setup { capabilities = blink_capabilities }
  lsp.gh_actions_ls.setup { capabilities = blink_capabilities }
  lsp.jdtls.setup { capabilities = blink_capabilities }
  lsp.jsonls.setup { capabilities = blink_capabilities }
  lsp.lua_ls.setup { capabilities = blink_capabilities }
  lsp.marksman.setup { capabilities = blink_capabilities }
  lsp.pyright.setup { capabilities = blink_capabilities }
  lsp.postgres_lsp.setup { capabilities = blink_capabilities }
  lsp.prismals.setup { capabilities = blink_capabilities }
  lsp.rust_analyzer.setup { capabilities = blink_capabilities }
  lsp.tailwindcss.setup { capabilities = blink_capabilities }
  lsp.ts_ls.setup { capabilities = blink_capabilities }
end

return lang_conf
