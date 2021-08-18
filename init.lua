vim.cmd([[packadd packer.nvim]])

-- Setup global variable
_G.global = {}
-- keymappings
require("keymaps")
-- vim options
require("options")
--plugins
require("plugins")

-- LSP servers setup
require("lsp")

-- Set colorscheme
vim.cmd('colorscheme blue-moon')
