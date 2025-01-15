-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "eslint", "bashls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.jsonls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true }
    },
  }
}

lspconfig.rust_analyzer.setup({
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module"
        },
        prefix = "self"
      }
    },
    cargo = {
      buildScripts = {
        enable = true
      }
    }
  },
  proMacro = {
    enable = true
  }

})

require("typescript-tools").setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvicer = true
    client.server_capabilities.documentRangeFormattingProvider = true
  end,
  settings = {
     tsserver_locale = "pt-br"
  },
  handlers = {
    ["tsserver"] = function() end
  },
  code_lens = false
}


