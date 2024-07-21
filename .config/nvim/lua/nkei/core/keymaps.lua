vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- move buffer
keymap.set("n", "<A-h>", "<cmd>bprev<CR>", { desc = "go to prev buffer" })
keymap.set("n", "<A-l>", "<cmd>bnext<CR>", { desc = "go to next buffer "})

-- save file to clipboard
keymap.set("n", "<leader>c", "<cmd>silent !cat % | clip.exe<CR>", {noremap = true})

keymap.set("n", "k", "gk", { noremap = true })
keymap.set("n", "j", "gj", { noremap = true })
