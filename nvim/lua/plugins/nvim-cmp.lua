return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer"
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      completetion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      mapping = cmp.mapping.preset.insert({
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false}),
      }),
      sources = cmp.config.sources({
        { name = "buffer" },
        { name = "nvim_lsp" },
      }),
    })
  end
}
