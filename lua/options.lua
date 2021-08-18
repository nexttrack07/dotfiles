vim.g.mapleader = " "

vim.opt.completeopt = "menuone,noselect"
vim.opt.hidden = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.pumheight = 10
vim.opt.shiftwidth = 4
vim.opt.showcmd = false
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 2
vim.opt.signcolumn = "yes"
vim.opt.shortmess:append("cA")
vim.opt.clipboard:append("unnamedplus")
vim.opt.inccommand = "nosplit"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.wo.number = true
vim.opt.breakindent = true

-- Faster diagnostic hoever box on cursor hold
vim.opt.updatetime = 250

-- Map blankline
vim.g.indent_blankline_char = "┊"
vim.g.indent_blankline_filetype_exclude = { 'help' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile', 'packer'}
vim.g.indent_blankline_char_highlight = 'LineNr'

