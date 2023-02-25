local lsp = require("lsp-zero")
lsp.preset("recommended")

-- Python
require'lspconfig'.pyright.setup{}

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- HTML 
require'lspconfig'.html.setup{}


vim.opt.signcolumn = 'yes'

lsp.ensure_installed({
  'html',
  'pyright',
})

lsp.nvim_workspace()
lsp.setup()
