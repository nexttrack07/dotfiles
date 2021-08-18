local u = require('utils')
require('trouble').setup({})

-- Keymaps
u.map("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
u.map("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {silent = true, noremap = true})
u.map("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {silent = true, noremap = true})
u.map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
u.map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
u.map("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})

