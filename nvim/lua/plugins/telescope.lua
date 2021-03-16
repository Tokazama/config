
require('telescope').setup{
    prompt_position = "top",
}
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

vim.api.nvim_set_keymap('n', '<leader>tg',  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tb',  [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tf',  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>th',  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
