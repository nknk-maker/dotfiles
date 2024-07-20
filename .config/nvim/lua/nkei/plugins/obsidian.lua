return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      -- {
      --   name = "personal",
      --   path = "~/vaults/personal",
      -- },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
      {
        name = "nkei",
        path = "~/work/Obsidian"
      }
    },

    daily_notes = {
      folder = "Daily",
      date_format = "%y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = {"daily-notes"},
      template = "Config/Templates/DailyNoteTemplate.md"
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true}
      },

      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },

      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true, expr = true },
      }
    },

  },

}
