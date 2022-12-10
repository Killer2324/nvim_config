local lsp = require('lspconfig')

require('/plugins/lsp/mason')
require('/plugins/lsp/handlers').setup()
require('/plugins/lsp/null_ls')

lsp.sumneko_lua.setup {
  settings = {
    Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
  }
}

lsp.pyright.setup {
	settings = {
    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
	},
}

lsp.tsserver.setup {}
