local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1', 
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'windwp/nvim-autopairs'
	use 'akinsho/bufferline.nvim'
    use 'numToStr/Comment.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
    use 'L3MON4D3/LuaSnip'
    use 'vim-pandoc/vim-pandoc-syntax'
    use 'ur4ltz/surround.nvim'
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use 'nvim-treesitter/nvim-treesitter'
	use 'folke/which-key.nvim'

    if packer_bootstrap then require('packer').sync() end
end)

-- plugin setups
require('plugins.autopairs')
require('plugins.bufferline')
require('plugins.comment')
require('plugins.indentline')
require('plugins.lualine')
require('plugins.luasnip')
require('plugins.pandoc')
require('plugins.surround')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.whichkey')
