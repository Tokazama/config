
-- Packer.nvim
-- Bootstrap Packer.nvim if it doesn't exist
local install_path = vim.fn.stdpath('data') ..'/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command(
        '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    vim.cmd [[:q!]]
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost packer.lua PackerCompile'

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

--[[ include local projects for testing, etc.
local function project(name)
    local user_separator_index = string.find(name, vim.pesc '/')
    if user_separator_index then -- a username is specified
        name = string.sub(name, user_separator_index + 1)
    end
    return vim.fn.glob('~/Programming/ACTIVE/'..name)
end
TermExec cmd="echo /file/example"
execute 'packadd packer.nvim'
]]--

--]]
return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt=true}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    }
    use {'famiu/bufdelete.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- git
    use {'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }
    use {'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('gitsigns').setup()
        end
    }
    -- ### Specific Language Support / Syntax Highlighting / Formatting
    use {'JuliaEditorSupport/julia-vim'}
    use {'kdheepak/JuliaFormatter.vim'}
    use {'plasticboy/vim-markdown'}
    use {'neovim/nvim-lspconfig'}
    --use {'hkupty/iron.nvim'}

    -- ### Misc
    use {'preservim/nerdcommenter'}
    use {'kyazdani42/nvim-tree.lua',
        config = function() require'nvim-tree'.setup {} end
    }
    use {'hoob3rt/lualine.nvim',
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'onedark', --'github',
                    section_separators = {' ', ' '},
                    component_separators = {' ', ' '},
                    icons_enabled = true,
                },
                sections = {
                    lualine_a = { {'mode', upper = true} },
                    lualine_b = { {'branch', icon = ''} },
                    lualine_c = { {'filename', file_status = true} },
                    lualine_x = { 'encoding', 'fileformat', 'filetype' },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location'  },
                },
                inactive_sections = {
                    lualine_a = {  },
                    lualine_b = {  },
                    lualine_c = { 'filename' },
                    lualine_x = { 'location' },
                    lualine_y = {  },
                    lualine_z = {  }
                },
            })
        end,
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {"folke/which-key.nvim"}
    use {"akinsho/toggleterm.nvim",
        config = function()
            require('toggleterm').setup{
                shade_terminals = false,
                size = function(term)
                    if term.direction == "horizontal" then
                        return 15
                    elseif term.direction == "vertical" then
                        return vim.o.columns * 0.4
                    end
                end,
            }
        end
    }
    use {"startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
      config = function()
          require"startup".setup(require"brain.startup")
      end
    }
    use {'projekt0n/github-nvim-theme'}
    use {'Pocco81/TrueZen.nvim'}
    use "rebelot/kanagawa.nvim"
    --use {'sainnhe/edge'}
end)

