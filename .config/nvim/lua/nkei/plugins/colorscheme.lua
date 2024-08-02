return {
  "catppuccin/nvim",
  priority = 1500,
  config = function()
      require("catppuccin").setup({
          flavour = "frappe",
      })
  vim.cmd.colorscheme("catppuccin-mocha")
  vim.cmd("highlight TelescopeSelection cterm=bold gui=bold guifg=#a6e3a1 guibg=#181825")
  end,
}

