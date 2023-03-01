return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
    },
     config = function()
        local lsp = require("lsp-zero")
lsp.preset("recommended")

-- Python
require'lspconfig'.pyright.setup {
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    }
 }

 local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
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
end,
}
