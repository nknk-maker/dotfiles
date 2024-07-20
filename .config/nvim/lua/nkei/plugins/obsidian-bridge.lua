return {
  "oflisback/obsidian-bridge.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  opts = {
    obsidian_server_address = "http://localhost:27123",
    scroll_sync = true
  },
  config = function()
    require("obsidian-bridge").setup({
    })
  end,
  event = {
    "BufReadPre *.md",
    "BufNewFile *.md",
  },
  lazy = true,
}
