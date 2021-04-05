
local function add(name) vim.api.nvim_command('packadd '..name) end

add 'iron.nvim'
-- add 'nerdtree'
add 'nerdcommenter'
add 'vim-markdown'
add 'plenary.nvim'

add 'popup.nvim'
add 'telescope.nvim'

-- ### git
add 'vim-fugitive'

-- ### Specific Language Support / Syntax Highlighting / Formatting
add 'julia-vim'

-- Themes
add 'nvim-web-devicons'
add 'nvim-colorizer.lua'
add 'indentLine'
add 'nvim-tree.lua'
add 'colorbuddy.nvim'
add 'nvim-lspconfig'
add 'completion-nvim'
add 'gitsigns.nvim'
add 'lualine.nvim'

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
    'lua';
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
require('plugins/telescope')

-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

    --[[ FIND
    -- git files
    vim.api.nvim_set_keymap('', '<leader>fg', ':GFiles<CR>', { noremap = true, silent = true })
    -- mark
    vim.api.nvim_set_keymap('', '<leader>fm', ':Marks<CR>', { noremap = true, silent = true })
    -- file
    vim.api.nvim_set_keymap('', '<leader>ff', ':Files<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>ag', ':Ag<CR>', { noremap = true, silent = true })
    -- line
    -- buffers
    vim.api.nvim_set_keymap('', '<leader>fb', ':Buffers<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>fp', ':ProjectFiles<CR>', { noremap = true, silent = true })
    -- history
    -- vim.api.nvim_set_keymap('', '<leader>fh', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
    -- ]]

--require('plugins/lsp')

require('plugins/theme')

require('plugins/completion')

require('plugins/gitsigns')

return finders

