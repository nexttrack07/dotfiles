local packer = require("packer")

local get_config = function(name)
    return string.format("require('plugins.%s')", name)
end

local start_packer = function() 
    use({ "wbthomason/packer.nvim", opt = true })

    use("tpope/vim-repeat")
    use("tpope/vim-commentary")
    use("tpope/vim-surround")
    use("tpope/vim-fugitive")
    use("tpope/vim-sleuth")

    use 'mhartington/formatter.nvim'

    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    })

    use({
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    })

    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = get_config('galaxyline'),
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }


    -- Colorschemes
    use({
        'glepnir/zephyr-nvim',
        'Th3Whit3Wolf/space-nvim',
        'tjdevries/colorbuddy.vim',
        'Th3Whit3Wolf/onebuddy',
        'navarasu/onedark.nvim',
        'gruvbox-community/gruvbox',
        'sainnhe/sonokai',
        'sainnhe/edge',
        'mhartington/oceanic-next',
        'kyazdani42/blue-moon',
        'bluz71/vim-nightfly-guicolors',
        'marko-cerovac/material.nvim',
        'rafamadriz/neon',
        'bkegley/gloombuddy',
        'Th3Whit3Wolf/one-nvim',
        'folke/tokyonight.nvim'
    })

    use 'jiangmiao/auto-pairs'

    use({
        'phaazon/hop.nvim',
        as = 'hop',
        config = function()
            require'hop'.setup {
                keys = 'etovxqpdygfblzhckisuran'
            }
        end
    })


    use({
        'hrsh7th/nvim-compe',
    })

    use('windwp/nvim-autopairs')

    use('Yggdroot/indentLine')


    use({
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'}
        },
        config = get_config('telescope')
    })
    use({
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    })

    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/nvim-lsp-ts-utils')

    -- use({
    --     'ray-x/lsp_signature.nvim',
    --     config = get_config('lsp_signature')
    -- })

    use({
        'folke/lua-dev.nvim',
        requires = { 'neovim/nvim-lspconfig' },
        config = get_config('lua-dev')
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = get_config('treesitter')
    })

    use('L3MON4D3/LuaSnip')

    use({
        "rrethy/vim-illuminate",
        config = get_config('illuminate')
    })

    use 'shaunsingh/nord.nvim'
    use("psliwka/vim-smoothie")
    use({ 
        "famiu/nvim-reload",
        config = get_config('reload')
    })
end

require('plugins.compe')
require('plugins.trouble')
require('plugins.formatter')

return packer.startup(start_packer)
