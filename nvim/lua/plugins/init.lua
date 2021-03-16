
local function add(name) vim.api.nvim_command('packadd '..name) end


add 'iron.nvim'
-- add 'nerdtree'
add 'nerdcommenter'
add 'fzf'
add 'fzf.vim'
add 'vim-markdown'
add 'plenary.nvim'

add 'popup.nvim'
add 'telescope.nvim'

-- ### git
add 'vim-fugitive'
add 'vim-gitgutter'

-- ### Specific Language Support / Syntax Highlighting / Formatting
add 'julia-vim'

-- Themes
add 'galaxyline.nvim'
add 'nvim-web-devicons'
add 'nvim-colorizer.lua'
add 'indentLine'
add 'nvim-tree.lua'
add 'nvim-bufferline.lua'
add 'colorbuddy.nvim'
add 'nvim-lspconfig'

require('plugins/repl')

function nvim_colorizer()
  require 'colorizer'.setup {
    css = { rgb_fn = true; };
    scss = { rgb_fn = true; };
    sass = { rgb_fn = true; };
    stylus = { rgb_fn = true; };
    vim = { names = true; };
    tmux = { names = false; };
    'javascript';
    'javascriptreact';
    'typescript';
    'typescriptreact';
    html = {
      mode = 'foreground';
    }
  }
end

nvim_colorizer()

require('plenary')
require('popup')
require'bufferline'.setup{
  options = {
    view = "multiwindow", -- "default",
    numbers = "buffer_id",
    number_style = "superscript",
    mappings = true,
    diagnostics = false,
    show_buffer_close_icons = false,
    -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thick",--"slant", -- | "thick" | "thin" | { 'any', 'any' },
    -- enforce_regular_tabs = false | true,
    -- always_show_bufferline = true | false,
  }
}
require('plugins/telescope')

require('plugins/lsp')

require('plugins/theme')

--[[

-- these are all the default values
function nvim_bufferline()
  require('bufferline').setup{
    options = {
      modified_icon = '✥',
      buffer_close_icon = '',
      mappings = true,
      always_show_bufferline = false,
    }
  }
end

nvim_bufferline()
]]--


