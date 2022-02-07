

local function set_mappings()
    -- BUFFER
    -- WINDOW
    -- balance-window
    vim.api.nvim_set_keymap('', '<leader>w=', '<C-W>=', { noremap = true, silent = true })


    --vim.api.nvim_set_keymap('t', '<c-h>', '<c-n><c-w>h', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('t', '<c-j>', '<c-n><c-w>j', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('t', '<c-k>', '<c-n><c-w>k', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('t', '<c-l>', '<c-n><c-w>l', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>jf', ':JuliaFormatterFormat<CR>', { noremap = true, silent = true }) 
    vim.api.nvim_set_keymap('s', '<leader>jf', ':\'<,>\'JuliaFormatterFormat<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
end

set_mappings()

