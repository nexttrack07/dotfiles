local u = require('utils')

u.nmap('<leader>n', [[<cmd>lua require('illuminate').next_reference({wrap=true})<CR>]])
u.nmap('<leader>N', [[<cmd>lua require('illuminate').next_reference({reverse=true,wrap=true})<CR>]])
