local status, packer = pcall(require, 'packer')
if(not status ) then
  print("packer is not installed")
  return
end

vim.cmd[[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use{
    'svrana/neosolarized.nvim',
     requires = { 'tjdevries/colorbuddy.nvim' },

  }
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'akinsho/toggleterm.nvim'
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim', }
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use('nvim-lua/completion-nvim')
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use 'jiangmiao/auto-pairs'
  use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "folke/neodev.nvim"
  use "rafamadriz/friendly-snippets"
  use 'mattn/emmet-vim'
  use 'mfussenegger/nvim-jdtls'
  use 'williamboman/mason.nvim'
  use 'neoclide/coc.nvim'
end)
