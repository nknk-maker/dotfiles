return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "",
              arrow_open = "",
            },
          },
        },
      },

      --disable window_picker for explorer to work well with window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
      tab = {
        sync = {
          open = true,
          close = true,
        }
      }
    })

    --set keymaps
    local keymap = vim.keymap
    local api = require("nvim-tree.api")
    keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, desc = "Toggle file explorer" })
    keymap.set("n", "<C-o>", [[<cmd>lua require('nvim-tree.api').node.open.edit();  vim.cmd("wincmd p")<CR>]], { noremap = true})
    keymap.set("n", "<leader>v", api.node.open.vertical)
    keymap.set("n", "<leader>h", api.node.open.horizontal)

  end
}


