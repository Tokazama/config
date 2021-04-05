
--[[
	/*
	 * IMPORTS
	 */
--]]
local execute = vim.api.nvim_command
local fn = vim.fn

--[[
	/*
	 * INSTALL PACKER
	 */

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

--[[
	/*
	 * LOAD PLUGINS
	 */
--]]

-- include local projects for testing, etc.
local function project(name)
    local user_separator_index = string.find(name, vim.pesc '/')
    if user_separator_index then -- a username is specified
        name = string.sub(name, user_separator_index + 1)
    end
    return vim.fn.glob('~/Programming/ACTIVE/'..name)
end

execute 'packadd packer.nvim'

--]]
return require('packer').startup{function(use)
    use {'wbthomason/packer.nvim', opt=true}
    use {'nvim-lua/completion-nvim'}
    use {'nvim-lua/plenary.nvim', opt=true}
    use 'nvim-lua/popup.nvim'
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use {'nvim-treesitter/nvim-treesitter'}
    -- git
    use 'tpope/vim-fugitive'
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = function()
        require('gitsigns').setup()
      end
    }
    -- ### Specific Language Support / Syntax Highlighting / Formatting
    use 'JuliaEditorSupport/julia-vim'
    use 'kdheepak/JuliaFormatter.vim'
    use 'plasticboy/vim-markdown'
    use 'neovim/nvim-lspconfig'

    -- ### Misc
    use 'preservim/nerdcommenter'
    -- use {'npxbr/glow.nvim', run = ':GlowInstall'}
    use 'hkupty/iron.nvim'
    use {'Yggdroot/indentLine',
        config = function()
            vim.g.indentLine_char = '│'
        end
    }
    use 'kyazdani42/nvim-tree.lua'
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    }

    --[[
    use {
      'glepnir/galaxyline.nvim',
        branch = 'main',
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }]]--
    use {'norcalli/nvim-colorizer.lua', opt=true}
    use {'tjdevries/colorbuddy.nvim'}
end}

