vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.cindent = true

opt.swapfile = false

--search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- turn on termguicolors
opt.termguicolors = true
opt.signcolumn = "yes"

-- 不透明度を設定

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.wrap = false

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = {"*.cpp", "*.c", "*.lua", "*.config", "*.json", "*.sh"},
    command = 'silent !tmux send-keys -t 1 "cd %:p:h" C-m'
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = {"*.lua"},
    command = "setlocal sw=2 ts=2 et"
})

