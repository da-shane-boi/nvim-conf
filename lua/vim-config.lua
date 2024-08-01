vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.g.mapleader = " "
vim.o.termguicolors = false

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

-- KEYS
-- ease of use
vim.keymap.set('n', '<C-x>', ':q!<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Tab navigation
vim.keymap.set('n', '<C-j>', ':tabp<CR>')
vim.keymap.set('n', '<C-k>', ':tabn<CR>')
vim.keymap.set('n', '<C-T>', ':tabe<CR>')

-- Window management
vim.keymap.set("n", "<leader>j", "<C-w>s") -- Create new window on the side
vim.keymap.set("n", "<leader>k", "<C-w>v") -- Create new window below
vim.keymap.set("n", "<leader>q", "<C-w>q") -- Close window (same as :q)

-- Window resizing
vim.keymap.set("n", "<A-Right>", ":vert res +5<CR>") -- horizontally by 5
vim.keymap.set("n", "<A-Left>", ":vert res -5<CR>")  -- horizontally by -5
vim.keymap.set("n", "<A-Up>", ":res +5<CR>")         -- vertically by 5
vim.keymap.set("n", "<A-Down>", ":res -5<CR>")       -- vertically by -5

-- Window navigation
vim.keymap.set("n", "<S-l>", "<C-w>l") -- Switch to window on the right
vim.keymap.set("n", "<S-h>", "<C-w>h") -- Switch to window on the left
vim.keymap.set("n", "<S-k>", "<C-w>k") -- Switch to window above
vim.keymap.set("n", "<S-j>", "<C-w>j") -- Switch to window below
