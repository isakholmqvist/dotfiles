return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    local map = vim.keymap.set
    map("n", "<leader>v", ":NvimTreeFocus<CR>", {})
  end
}
