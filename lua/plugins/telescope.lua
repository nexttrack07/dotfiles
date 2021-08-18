local actions = require('telescope.actions')
local sorters = require('telescope.sorters')
local telescope = require('telescope')

telescope.setup({
    defaults = {
        timeoutlen = 2000,
        vimgrep_arguments = {
            'rg',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        prompt_prefix = " 🔎 ",
        initial_mode = "insert",
        file_sorter = sorters.get_fuzzy_file,
        generic_sorter = sorters.get_generic_fuzzy_sorter,
        file_ignore_patterns = {".backup",".swap",".langservers",".session",".undo","*.git","node_modules","vendor",".cache",".vscode-server",".Desktop",".Documents","classes"},
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require'telescope.previewers'.cat.new, 
        grep_previewer = require'telescope.previewers'.vimgrep.new,
        qflist_previewer = require'telescope.previewers'.qflist.new,
        winblend = 0
    },
    extensions = {
        fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    }
})

telescope.load_extension('fzf')

-- keymappings for telescope
local u = require('utils')

u.nmap('<leader>pf', [[<cmd>lua require('telescope.builtin').find_files()<CR>]])
u.nmap('<leader>ps', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
u.nmap('<leader>pb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
u.nmap('<leader>fs', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
u.nmap('<leader>ff', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
u.nmap('<leader>gf', [[<cmd>lua require('telescope.builtin').git_files()<CR>]])
u.nmap('<leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]])
u.nmap('<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<CR>]])
u.nmap('<leader>gc', [[<cmd>lua require('telescope.builtin').git_bcommits()<CR>]])
u.nmap('<leader>ts', [[<cmd>lua require('telescope.builtin').treesitter()<CR>]])

