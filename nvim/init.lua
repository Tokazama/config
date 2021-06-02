
require('brain.defaults')
require('brain.packer')
require('brain.telescope')
require('brain.completion')
require('brain.repl')
require('brain.mappings')
--require('brain.lsp')


--vim.o.background = 'light'
--vim.g.colors_name = 'gruvbox'
--vim.g.colors_name = 'onedark_nvim'

require('brain.theme')


--[[
    options = {
        theme = 'one'..vim.o.background,
        section_separators = {'', ''},
        component_separators = {'', ''},
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
        lualine_z = {   }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    }
})
]]--

vim.cmd[[autocmd TermOpen * setl norelativenumber nonumber]]
vim.cmd[[autocmd TermOpen * startinsert]]
vim.cmd[[command! PackerCompile lua require('brain.packer').compile()]]
vim.cmd[[command! PackerInstall lua require('brain.packer').install()]]
vim.cmd[[command! PackerUpdate lua require('brain.packer').update()]]
vim.cmd[[command! PackerSync lua require('brain.packer').sync()]]
vim.cmd[[command! PackerClean lua require('brain.packer').clean()]]

