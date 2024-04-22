local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'	--Packer manager
	use 'joshdick/onedark.vim'	    --Tema onedark
	use 'tribela/vim-transparent' 	--Transparencia
    use 'Yggdroot/indentLine'       --Marca de indentacion |
    --use {
    --    "nvim-neo-tree/neo-tree.nvim",
    --    branch = "v3.x",
    --    requires = { 
    --      "nvim-lua/plenary.nvim",
    --      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    --      "MunifTanjim/nui.nvim",
    --    }
    --}
    use 'scrooloose/nerdtree'       --NerdTree
    use 'jiangmiao/auto-pairs'      --Completa Pares()[]
    use 'nvim-treesitter/nvim-treesitter'   --Treesitter
    --use 'neoclide/coc.nvim'         --CocInstall
    use 'SirVer/Ultisnips'          --Snippets
    use 'honza/vim-snippets'        --Snippets

    use 'lewis6991/gitsigns.nvim'   --Git
    --Airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    -- Icons
    use 'ryanoasis/vim-devicons'


    use {
      'nmac427/guess-indent.nvim',
      config = function() require('guess-indent').setup {} end,
    }
    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    --Preview Markdown
    -- https://github.com/iamcco/markdown-preview.nvim
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    
    -- Latex
    use 'lervag/vimtex'
    -- Oil - Create directory and files
    use({
      "stevearc/oil.nvim",
      config = function()
        require("oil").setup()
      end,
    })
    --Github copilot
    use 'github/copilot.vim'

    --Colors
    use 'norcalli/nvim-colorizer.lua'
    --Poliglot
    --use 'sheerun/vim-polyglot'
    
    --OmniSharp
    --use 'OmniSharp/omnisharp-vim'
    --use 'dense-analysis/ale'
    --use 'nickspoons/vim-sharpenup'

    --Lsp (mason,neodev)
    use {
        "neovim/nvim-lspconfig",
        requires = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "folke/neodev.nvim",
        },
        config = function()
            require("neodev").setup()
        end,
    }
    --Cmp Autocompletition
    use{
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-git",
            --"windwp/nvim-autopairs",
            --"L3MON4D3/LuaSnip",
            --"saadparwaiz1/cmp_luasnip",
            --"windwp/nvim-autopairs",
        },
    }


end)
