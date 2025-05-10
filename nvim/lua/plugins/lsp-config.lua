return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "dockerls",
          "rust_analyzer"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local map = vim.keymap.set
      local lspconfig = require('lspconfig')
      local cmp_lsp = require('cmp_nvim_lsp')
      local capabilities = cmp_lsp.default_capabilities()
      lspconfig.lua_ls.setup(
        {
          capabilities = capabilities,
        }
      )
      lspconfig.rust_analyzer.setup({capabilities = capabilities})
      map('n', 'K', vim.lsp.buf.hover, {})
      map('n', 'gd', vim.lsp.buf.definition, {})
      map('n', 'gD', vim.lsp.buf.declaration, {})
      map({ 'n' }, 'ca', vim.lsp.buf.code_action, {})

    end
  }
}
