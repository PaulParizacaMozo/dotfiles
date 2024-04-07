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
    use 'neoclide/coc.nvim'         --CocInstall
    use 'SirVer/Ultisnips'          --Snippets
    use 'honza/vim-snippets'        --Snippets

    use 'lewis6991/gitsigns.nvim'   --Git

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'ryanoasis/vim-devicons'


    use {
      'nmac427/guess-indent.nvim',
      config = function() require('guess-indent').setup {} end,
    }
    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    --Preview Markdown
    -- https://github.com/iamcco/markdown-preview.nvim
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
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
end)
