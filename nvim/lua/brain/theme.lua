
require'nvim-treesitter.configs'.setup{}

vim.o.background = 'light'
vim.cmd("colorscheme one-nvim")
--vim.cmd("colorscheme onedark_nvim")
--vim.cmd("colorscheme gruvbox")
--vim.cmd("colorscheme zephyr")

require('lualine').setup({
    options = {
        theme = 'one'..vim.o.background,
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

