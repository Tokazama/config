
require('telescope').setup{
    defaults = {
        prompt_position = "top",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal"
    }
}
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

vim.api.nvim_set_keymap('n', '<leader>fg',  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb',  [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff',  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh',  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fm',  [[<Cmd>lua require('telescope.builtin').marks()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fk',  [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]], { noremap = true, silent = true })

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
