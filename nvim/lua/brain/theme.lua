
local load_theme = function()
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


    --vim.api.nvim_command("colorscheme zephyr")
    --vim.api.nvim_command("colorscheme zone")
    vim.g.one_nvim_transparent_bg = true
end

load_theme()

