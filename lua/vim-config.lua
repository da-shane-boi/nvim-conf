vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.g.mapleader = " "
vim.o.termguicolors = false
vim.highlight.priorities.semantic_tokens = 95

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.hlsearch = true
vim.opt.incsearch = true


vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

--
-- Clipboard configuration
vim.opt.clipboard:append("unnamedplus")


vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

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

-- Ease of Life
vim.keymap.set("n", "<leader>pwd", ":pwd<Cr>") -- get current working directory

-- Open Code here and close opened buffer
vim.keymap.set("n", "<leader>cd", function()
    vim.cmd("tabnew")
    vim.cmd("terminal code .")
    vim.cmd("q")
end)
-- Open file explorer here and close opened buffer
vim.keymap.set("n", "<leader>fe", function()
    vim.cmd("tabnew")
    vim.cmd("terminal nautilus .")
    vim.cmd("q")
end)

-- Better Copy Out
vim.keymap.set("n", "<S-y>", function()
    vim.cmd("call feedkeys('\"+y')")
end, { noremap = true, silent = true })

-- Python
-- Run python file
vim.keymap.set("n", "<leader>pr", function()
    local filename = vim.fn.expand('%:p')
    vim.cmd("sp")
    vim.cmd("wincmd j")
    vim.cmd("resize 15")
    vim.cmd("terminal python3 " .. filename)
end)

