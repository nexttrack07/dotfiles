local u = require("utils")

u.map('', '<Space>', '<Nop>') -- unmap space so that it can be set as leader
u.imap('jk', '<Esc>')
u.imap('kj', '<Esc>')

-- easier moving between buffers
u.nmap('<C-j>', '<C-w>j')
u.nmap('<C-k>', '<C-w>k')
u.nmap('<C-h>', '<C-w>h')
u.nmap('<C-l>', '<C-w>l')

-- Add move line shortcuts
u.nmap('˚', ':m .-2<CR>==')
u.imap('∆', '<Esc>:m .+1<CR>==')
u.imap('˚', '<Esc>:m .-2<CR>==')
u.vmap('∆', ':m \'>+1<CR>gv=gv')
u.vmap('˚', ':m \'<-2<CR>gv=gv')
u.nmap('∆', ':m .+1<CR>==')


-- Bring search results to middle of the screen
u.nmap('n', 'nzz')
u.nmap('N', 'Nzz')

u.nmap('H', '^')
u.nmap('L', '$')

u.nmap('Y', 'y$')
u.nmap('p', '"0p')

-- Tab to switch between tabs
u.nmap('<Tab>', ':bn<cr>')
u.nmap('<S-Tab>', ':bN<cr>')
u.nmap('<leader>bd', ':bd<cr>')

-- Keybinds for hop.nvim
u.nmap('<leader>hw', "<cmd>lua require'hop'.hint_words()<cr>")
u.nmap('<leader>hl', "<cmd>lua require'hop'.hint_lines()<cr>")
u.nmap('<leader>hc', "<cmd>lua require'hop'.hint_char2()<cr>")
