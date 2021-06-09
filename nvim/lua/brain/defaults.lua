
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end
vim.o.termguicolors = true

local global = {}
local home    = os.getenv("HOME")
local path_sep = global.is_windows and '\\' or '/'
local os_name = vim.loop.os_uname().sysname

function global:load_variables()
    self.is_mac     = os_name == 'Darwin'
    self.is_linux   = os_name == 'Linux'
    self.is_windows = os_name == 'Windows'
    self.vim_path    = home .. path_sep..'.config'..path_sep..'nvim'
    self.cache_dir   = home .. path_sep..'.cache'..path_sep..'vim'..path_sep
    self.modules_dir = self.vim_path .. path_sep..'modules'
    self.path_sep = path_sep
    self.home = home
end

global:load_variables()

-- Create cache dir and subs dir
local load_core =function()
    local data_dir = {
        global.cache_dir..'backup',
        global.cache_dir..'session',
        global.cache_dir..'swap',
        global.cache_dir..'tags',
        global.cache_dir..'undo'
    }

    -- There only check once that If cache_dir exists
    -- Then I don't want to check subs dir exists
    if vim.fn.isdirectory(global.cache_dir) == 0 then
        os.execute("mkdir -p " .. global.cache_dir)
        for _,v in pairs(data_dir) do
            if vim.fn.isdirectory(v) == 0 then
                os.execute("mkdir -p " .. v)
            end
        end
    end
    --vim.g.loaded_gzip              = 1
    --vim.g.loaded_tar               = 1
    --vim.g.loaded_tarPlugin         = 1
    --vim.g.loaded_zip               = 1
    --vim.g.loaded_zipPlugin         = 1
    --vim.g.loaded_getscript         = 1
    --vim.g.loaded_getscriptPlugin   = 1
    --vim.g.loaded_vimball           = 1
    --vim.g.loaded_vimballPlugin     = 1
    --vim.g.loaded_matchit           = 1
    --vim.g.loaded_matchparen        = 1
    --vim.g.loaded_2html_plugin      = 1
    --vim.g.loaded_logiPat           = 1
    --vim.g.loaded_rrhelper          = 1
    --vim.g.loaded_netrw             = 1
    --vim.g.loaded_netrwPlugin       = 1
    --vim.g.loaded_netrwSettings     = 1
    --vim.g.loaded_netrwFileHandlers = 1

    vim.g.mapleader = " "
    --vim.api.nvim_set_keymap('n',' ','',{noremap = true})
    --vim.api.nvim_set_keymap('x',' ','',{noremap = true})
    vim.o.magic          = true -- For regular expressions turn magic on
    vim.o.showmode       = true
    vim.o.showcmd        = true
    vim.o.cmdheight      = 1     -- Height of the command bar
    vim.o.incsearch      = true  -- Makes search act like search in modern browsers
    vim.o.showmatch      = true  -- show matching brackets when text indicator is over them
    vim.o.relativenumber = true  -- Show line numbers
    vim.o.number         = true  -- But show the actual number for the line we're on
    vim.o.ignorecase     = true  -- Ignore case when searching...
    vim.o.smartcase      = true  -- ... unless there is a capital letter in the query
    vim.o.hidden         = true  -- I like having buffers stay around
    vim.o.cursorline     = false  -- Highlight the current line
    vim.o.equalalways    = false -- I don't like my windows changing all the time
    vim.o.splitright     = true  -- Prefer windows splitting to the right
    vim.o.splitbelow     = true  -- Prefer windows splitting to the bottom
    vim.o.updatetime     = 1000  -- Make updates happen faster
    vim.o.hlsearch       = true  -- I wouldn't use this without my DoNoHL function
    vim.o.scrolloff      = 10    -- Make it so there are always ten lines below my cursor
    vim.o.tm             = 1000
    vim.o.tw             = 500
    vim.o.wildmenu       = true  -- visual autocomplete for command menu

    -- Tabs
    vim.o.autoindent     = true
    vim.o.cindent        = true
    vim.o.wrap           = true
    vim.o.tabstop        = 4
    vim.o.shiftwidth     = 4
    vim.o.softtabstop    = 4
    vim.o.expandtab      = true
    vim.o.breakindent    = true
    vim.o.showbreak      = string.rep(' ', 3) -- Make it so that long lines wrap smartly
    vim.o.linebreak      = true

    vim.o.whichwrap      = "h,l,<,>,[,],~";

    vim.o.foldmethod     = 'marker'
    vim.o.foldlevel      = 0
    vim.o.modelines      = 1

    vim.wo.foldenable = false
    -- this disables swap files that protect against crashes, I find them annoying because
    -- I have to use univeristy antivirus protection that slows my computer down everytime I use them
    vim.o.swapfile = false
    vim.o.autoread = true -- automatically reload files changed outside of Vim

    vim.o.belloff = 'all'
    vim.o.clipboard = 'unnamedplus'
    vim.o.emoji = true
    vim.wo.conceallevel=0
    vim.wo.concealcursor=""
    vim.o.backspace='eol,start,indent'

    -- TODO move markdown settings
    vim.g.vim_markdown_conceal = 0

    vim.g.vim_markdown_conceal_code_blocks = 0

    vim.g.vim_markdown_folding_style_pythonic = 1

    vim.g.vim_markdown_fenced_languages = {'python', 'bash=sh', 'jldoctest=julia', 'julia=julia'}

    vim.g.vim_markdown_markdown_strikethrough = 1

    -- spell
    vim.o.spelllang='en_us'
    -- TODO should use .. to concatenate strings
    vim.o.spellfile='/Users/zchristensen/.config/nvim/spell/en.utf-8.add'
    vim.wo.spell = false

    if vim.fn.has('macunix') == 1 then
        vim.o.mouse = 'a'
    end
    vim.o.termguicolors = true

    vim.wo.list = true
    --vim.o.listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←"

    vim.o.listchars = "tab:▸ ,trail:·,extends:#,nbsp:·"
    --vim.o.listchars = "tab:▸\ ,trail:·,extends:#,nbsp:·"

    --vim.o.complete       = ".,w,b,k"
    --vim.o.completeopt    = "menu,menuone,noselect,noinsert";
    vim.o.completeopt    = "menuone,noselect"

    vim.g.mapleader = " "
    vim.g.maplocaleader = ','

    if vim.fn.has('macunix') == 1 then
        vim.g.clipboard = {
            name = "macOS-clipboard",
            copy = {
                ["+"] = "pbcopy",
                ["*"] = "pbcopy",
            },
            paste = {
                ["+"] = "pbpaste",
                ["*"] = "pbpaste",
            },
            cache_enabled = 0
        }
    end
end

load_core()

