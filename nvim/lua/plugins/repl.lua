
local iron = require('iron')

iron.core.set_config {
  preferred = {
    julia = "julia",
    repl_open_cmd = "botright split",
  }
}

_G.my_iron_open_fn = function(orientation)
    local old_config = iron.config.repl_open_cmd
    iron.core.set_config{repl_open_cmd = orientation}
    iron.core.repl_for(vim.api.nvim_buf_get_option(0, "ft"))
    iron.core.set_config{repl_open_cmd = old_config}
end


-- TERMINAL
-- open repl
vim.api.nvim_set_keymap('', '<leader>or', ':IronRepl<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<leader>rs', '<Cmd>lua my_iron_open_fn("rightbelow split")<Cr><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<leader>rv', '<Cmd>lua my_iron_open_fn("botright vertical split")<Cr><Esc>', { noremap = true, silent = true })

-- nmap B <Cmd>lua my_iron_open_fn("rightbelow split")<Cr><Esc>
-- nmap L <Cmd>lua my_iron_open_fn("topleft vertical split")<Cr><Esc>

-- send current line to repl
vim.api.nvim_set_keymap('', '<leader>sl', ':lua require(\'iron\').core.send_line()<CR>', { noremap = true, silent = true })
-- send current file to repl
--vim.api.nvim_set_keymap('', '<leader>sf', ':TREPLSendFile<CR>', { noremap = true, silent = true })
-- send register to repl
vim.api.nvim_set_keymap('', '<leader>sr', ':lua iron.core.visual_send()<CR>', { noremap = true, silent = true })

-- JULIA
-- open julia split-horizontal
vim.api.nvim_set_keymap('', '<leader>ojs', ':botright 2Topen<CR> :T julia<CR>', { noremap = true, silent = true })
-- open julia split-horizontal
vim.api.nvim_set_keymap('', '<leader>ojv', ':vertical 2Topen<CR> :T julia<CR>', { noremap = true, silent = true })
 
