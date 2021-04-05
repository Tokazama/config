
local function set_options()
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
    vim.o.tm             = 500
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
    vim.o.background = 'light'

    vim.cmd[[autocmd TermOpen * setl norelativenumber nonumber]]
    vim.cmd[[autocmd TermOpen * startinsert]]
end

set_options()

