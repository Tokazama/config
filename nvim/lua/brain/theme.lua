
local load_theme = function()
    vim.o.background = 'light'
    require('lualine').setup({
        options = {
            theme = 'onedark',
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
            lualine_z = {  }
        },
    })

    vim.api.nvim_command("colorscheme one-nvim")
    vim.api.nvim_command("hi TODO guibg=#ffffff")
end

load_theme()

