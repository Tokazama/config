
local wk = require("which-key")

wk.setup{
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {enabled = false, suggestions = 20},
        presets = {
            operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = false, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = false, -- default bindings on <c-w>
            nav = false, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
        },
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    operators = { gc = "Comments" },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
    window = {
        border = "none", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
        align = "left", -- align columns left, center or right
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = "auto", -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

wk.register({
    b = {
        name = "buffer",
        f = {[[<Cmd>bfirst<CR>]], "first"},
        l = {[[<Cmd>blast<CR>]], "last"},
        n = {[[<Cmd>bnext<CR>]], "next"},
        p = {[[<Cmd>bprevious<CR>]], "previous"},
        d = {[[<Cmd>Bdelete!<CR>]], "delete"},
    },
    f = {
        name = "find",
        f = {[[<Cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], "file"},
        b = {[[<Cmd>lua require('telescope.builtin').buffers({previewer = false})<CR>]], "buffer"},
        g = {[[<Cmd>lua require('telescope.builtin').git_files({previewer = false})<CR>]], "git file"},
        h = {[[<Cmd>lua require('telescope.builtin').help_tags<CR>]], "help"},
        m = {[[<Cmd>lua require('telescope.builtin').marks()<CR>]], "mark"},
        s = {[[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], "string"},
    },
    g = {
        name = "git",
        b = {"<Cmd>Telescope git_branches<cr>", "branch" },
        o = {"<Cmd>Neogit kind=split<CR>", "open Neogit"},
    },
    m = {
        name = "mode",
        z = {[[<Cmd>TZAtaraxis<CR>]], "zen"}
    },
    w = {
        name = "window",
        r = {'<C-W>r', 'rotate'},
        w = {'<C-W>w', 'other'},
        h = {'<C-W>h', 'left'},
        k = {'<C-W>k', 'up'},
        l = {'<C-W>l', 'right'},
        j = {'<C-W>j', 'down'},
        H = {[[:wincmd H<CR> <C-W>=]], 'move left'},
        K = {[[:wincmd K<CR> <C-W>=]], 'move up'},
        L = {[[:wincmd L<CR> <C-W>=]], 'move right'},
        J = {[[:wincmd J<CR> <C-W>=]], 'move down'},
        s = {[[<Cmd>split<CR>]], 'split'},
        v = {[[<Cmd>vsplit<CR>]], 'vsplit'},
    },
    t = {
        name = "term",
        s = {[[<Cmd>ToggleTerm direction=horizontal<CR>]], 'horizontal'},
        v = {[[<Cmd>ToggleTerm direction=vertical<CR>]], 'vertical'},
        t = {[[<Cmd>ToggleTerm<CR>]], 'toggle'}
    },
    j = {
        name = "julia",
        s = {[[<Cmd>TermExec cmd="julia", direction=horizontal<CR>]], 'horizontal'},
        v = {[[<Cmd>TermExec cmd="julia", size=vim.o.columns*0.4 direction=vertical<CR>]], 'vertical'},
    },
}, {prefix = "<leader>"})

--[[
function my_line_test()
  local lnum = vim.fn.line('.')
  vim.cmd(string.format("1TermExec cmd='bundle exec rspec %%:%d", lnum))
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
]]--

