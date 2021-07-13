
local neogit = require('neogit')

-- git open
vim.api.nvim_set_keymap('', '<leader>go', ':Neogit kind=split<CR>', { noremap = true, silent = true })

