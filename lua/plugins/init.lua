local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap = fn.empty(fn.glob(install_path)) > 0 and fn.system({
    'git', 'clone', '--depth', '1',
    'https://github.com/wbthomason/packer.nvim', install_path
}) or false

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'windwp/nvim-autopairs'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'numToStr/Comment.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'karb94/neoscroll.nvim'
    use 'kylechui/nvim-surround'
    use 'nvim-telescope/telescope.nvim'

    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'rcarriga/nvim-dap-ui'

    use 'kyazdani42/nvim-web-devicons'
	use 'akinsho/bufferline.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use 'petertriho/nvim-scrollbar'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'
	use 'folke/which-key.nvim'

    if packer_bootstrap then require('packer').sync() end
end)

-- prepare keymaps first
local which = require('plugins.whichkey')
local register = which.register

-- plugin setups, sorted alphabetically
require('plugins.external.lsp')(register, which.lsp)
require('plugins.external.null')
require('plugins.external.dap')(register, which.dap)
require('plugins.external.dapui')

require('plugins.behavior.autopairs')
require('plugins.behavior.cmp')(which.cmp)
require('plugins.behavior.comment')
require('plugins.behavior.luasnip')
require('plugins.behavior.smooth')
require('plugins.behavior.surround')
require('plugins.behavior.telescope')(register, which.telescope)

require('plugins.interface.bufferline')
require('plugins.interface.indentline')
require('plugins.interface.lualine')
require('plugins.interface.nvim-tree')(register, which.nvimtree)
require('plugins.interface.scrollbar')
require('plugins.interface.treesitter')
