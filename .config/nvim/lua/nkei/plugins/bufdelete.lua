return {
  "famiu/bufdelete.nvim",
  config = function()
    local bufdelete = require("bufdelete")
    vim.keymap.set("n", "<leader>q", "<cmd>Bdelete<CR>", {desc = "delete current buffer"})
  end,
}
