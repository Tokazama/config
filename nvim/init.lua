
vim.g.mapleader = " "
vim.g.maplocaleader = ','
vim.o.background = 'dark'

require('brain.defaults')
require('brain.packer')
require('brain.telescope')
require('brain.treesitter')
--require('brain.completion')
require('brain.repl')
require('brain.mappings')
require("brain.which_key")

--require('brain.lsp')

vim.cmd[[autocmd TermOpen * setl norelativenumber nonumber]]
vim.cmd[[autocmd TermOpen * startinsert]]
--vim.cmd[[command! PackerCompile lua require('brain.packer').compile()]]
--vim.cmd[[command! PackerInstall lua require('brain.packer').install()]]
--vim.cmd[[command! PackerUpdate lua require('brain.packer').update()]]
--vim.cmd[[command! PackerSync lua require('brain.packer').sync()]]
--vim.cmd[[command! PackerClean lua require('brain.packer').clean()]]

--vim.api.nvim_command('syntax on')
require('brain.theme')
require('cortex')
vim.api.nvim_command("colorscheme cortex")

--vim.api.nvim_command('syntax off')

-- TODO vim.cmd[["highlight! TODO guibg=#ffffff"]]
--vim.api.nvim_command("highlight TODO guibg=#ffffff")
