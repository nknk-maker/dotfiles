return {
  "famiu/bufdelete.nvim",
  config = function()
    vim.keymap.set("n", "<leader>q", "<cmd>Bdelete<CR>", {desc = "delete current buffer"})
  end,
}
