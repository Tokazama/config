
-- vim.api.nvim_set_keymap('', '<leader>x', ':set number<CR>',  { noremap = true, silent = true })

--local function project_mappings()
    --vim.api.nvim_set_keymap('', '<leader>pn', ':tabnext<CR>',  { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('', '<leader>pp', ':tabprevious<CR>',  { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('', '<leader>po', ':tabnew<CR>',  { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('', '<leader>pc', ':tabclose<CR>',  { noremap = true, silent = true })
--end
--project_mappings()

local function set_mappings()
    -- BUFFER
    -- first-buffer
    vim.api.nvim_set_keymap('', '<leader>bf', ':bfirst<CR>', { noremap = true, silent = true })
    -- last-buffer
    vim.api.nvim_set_keymap('', '<leader>bl', ':blast<CR>', { noremap = true, silent = true })
    -- next-buffer
    vim.api.nvim_set_keymap('', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
    -- previous-buffer
    vim.api.nvim_set_keymap('', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
    -- home-buffer
    vim.api.nvim_set_keymap('', '<leader>bh', ':Startify<CR>', { noremap = true, silent = true })
    -- delete-buffer
    vim.api.nvim_set_keymap('', '<leader>bd', ':bd<CR>', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('', '<leader>bd', ':Bclose<cr>:tabclose<cr>gTbd<CR>', { noremap = true, silent = true })

    -- WINDOW
    -- rotate-window
    vim.api.nvim_set_keymap('', '<leader>wr', '<C-W>r', { noremap = true, silent = true })
    -- other-window
    vim.api.nvim_set_keymap('', '<leader>ww', '<C-W>w', { noremap = true, silent = true })
    -- window-left
    vim.api.nvim_set_keymap('', '<leader>wh', '<C-W>h', { noremap = true, silent = true })
    -- window-up
    vim.api.nvim_set_keymap('', '<leader>wk', '<C-W>k', { noremap = true, silent = true })
    -- window-right
    vim.api.nvim_set_keymap('', '<leader>wl', '<C-W>l', { noremap = true, silent = true })
    -- window-down
    vim.api.nvim_set_keymap('', '<leader>wj', '<C-W>j', { noremap = true, silent = true })
    -- window-split-horizontal
    vim.api.nvim_set_keymap('', '<leader>ws', ':split<CR>', { noremap = true, silent = true })
    -- window-split-vertical
    vim.api.nvim_set_keymap('', '<leader>wv', ':vsplit<CR>', { noremap = true, silent = true })
    -- delete-window
    vim.api.nvim_set_keymap('', '<leader>wd', '<C-W>c', { noremap = true, silent = true })
    -- balance-window
    vim.api.nvim_set_keymap('', '<leader>w=', '<C-W>=', { noremap = true, silent = true })

    -- move window left
    vim.api.nvim_set_keymap('', '<leader>wH', ':wincmd H<CR> <C-W>=', { noremap = true, silent = true })
    -- move window right
    vim.api.nvim_set_keymap('', '<leader>wL', ':wincmd L<CR> <C-W>=', { noremap = true, silent = true })
    -- move window up
    vim.api.nvim_set_keymap('', '<leader>wK', ':wincmd K<CR> <C-W>=', { noremap = true, silent = true })
    -- move window down
    vim.api.nvim_set_keymap('', '<leader>wJ', ':wincmd J<CR> <C-W>=', { noremap = true, silent = true })

    -- FIND
    -- git files
    vim.api.nvim_set_keymap('', '<leader>fg', ':GFiles<CR>', { noremap = true, silent = true })
    -- mark
    vim.api.nvim_set_keymap('', '<leader>fm', ':Marks<CR>', { noremap = true, silent = true })
    -- file
    vim.api.nvim_set_keymap('', '<leader>ff', ':Files<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>ag', ':Ag<CR>', { noremap = true, silent = true })
    -- line
    -- buffers
    vim.api.nvim_set_keymap('', '<leader>fb', ':Buffers<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>fp', ':ProjectFiles<CR>', { noremap = true, silent = true })
    -- history
    -- vim.api.nvim_set_keymap('', '<leader>fh', ':Telescope oldfiles<CR>', { noremap = true, silent = true })

    -- GIT
    -- git status
    vim.api.nvim_set_keymap('', '<leader>gs', ':Gstatus<CR>', { noremap = true, silent = true })
    -- git diff
    vim.api.nvim_set_keymap('', '<leader>gd', ':Gdiff<CR>', { noremap = true, silent = true })
    -- git commit
    vim.api.nvim_set_keymap('', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = true })
    -- git blame
    vim.api.nvim_set_keymap('', '<leader>gb', ':Gblame<CR>', { noremap = true, silent = true })
    -- git log
    vim.api.nvim_set_keymap('', '<leader>gl', ':Glog<CR>', { noremap = true, silent = true })
    -- git pull
    vim.api.nvim_set_keymap('', '<leader>gp', ':Git pull<CR>', { noremap = true, silent = true })
    -- git read
    vim.api.nvim_set_keymap('', '<leader>gr', ':Gread<CR>', { noremap = true, silent = true })
    -- git read
    vim.api.nvim_set_keymap('', '<leader>gr', ':Gread<CR>', { noremap = true, silent = true })
    -- git write
    vim.api.nvim_set_keymap('', '<leader>gw', ':Gwrite<CR>', { noremap = true, silent = true })
    -- git edit
    vim.api.nvim_set_keymap('', '<leader>ge', ':Gedit<CR>', { noremap = true, silent = true })
    -- git add
    vim.api.nvim_set_keymap('', '<leader>ga', ':Git add', { noremap = true, silent = true })
    -- git messenger
    vim.api.nvim_set_keymap('', '<leader>gm', ': GitMessenger', { noremap = true, silent = true })


    -- open julia split-horizontal
    vim.api.nvim_set_keymap('n', '<leader>jf', ':JuliaFormatterFormat<CR>', { noremap = true, silent = true }) 
    vim.api.nvim_set_keymap('s', '<leader>jf', ':\'<,>\'JuliaFormatterFormat<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>ll', ':lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.l = 'lsp-declaration'

    vim.api.nvim_set_keymap('', '<leader>lf', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.f = 'lsp-definition'

    vim.api.nvim_set_keymap('', '<leader>lh', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.h = 'lsp-hover'

    vim.api.nvim_set_keymap('', '<leader>li', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.i = 'lsp-implementation'

    vim.api.nvim_set_keymap('', '<leader>ls', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.s = 'lsp-signature-help'

    vim.api.nvim_set_keymap('', '<leader>lt', ':lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.t = 'lsp-type-definition'

    vim.api.nvim_set_keymap('', '<leader>lr', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.r = 'lsp-references'

    vim.api.nvim_set_keymap('', '<leader>l0', ':lua vim.lsp.buf.document_symbol()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l['0'] = 'lsp-document-symbol'

    vim.api.nvim_set_keymap('', '<leader>lw', ':lua vim.lsp.buf.workspace_symbol()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.w = 'lsp-workspace-symbol'

    vim.api.nvim_set_keymap('', '<leader>lg', ':lua vim.lsp.buf.show_line_diagnostics()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.d = 'lsp-diagnostics-show'

    vim.api.nvim_set_keymap('', '<leader>ln', ':lua vim.lsp.buf.goto_next()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.j = 'lsp-next-diagnostic'

    vim.api.nvim_set_keymap('', '<leader>lp', ':lua vim.lsp.buf.goto_previous()<CR>', { noremap = true, silent = true })
    -- let g:which_key_map.l.k = 'lsp-previous-diagnostic'

    vim.api.nvim_set_keymap('', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true})


    if vim.fn.has('macunix') == 1 then
        vim.api.nvim_set_keymap('i', '˙', '<Left>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '∆', '<Down>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '˚', '<Up>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '¬', '<Right>', { noremap = true, silent = true })

        vim.api.nvim_set_keymap('c', '˙', '<Left>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('c', '∆', '<Down>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('c', '˚', '<Up>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('c', '¬', '<Right>', { noremap = true, silent = true })

        vim.api.nvim_set_keymap('t', '˙', '<Left>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '∆', '<Down>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '˚', '<Up>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '¬', '<Right>', { noremap = true, silent = true })
    else
        vim.api.nvim_set_keymap('i', '<M-h>', '<Left>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '<M-j>', '<Down>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '<M-k>', '<Up>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '<M-l>', '<Right>', { noremap = true, silent = true })

        vim.api.nvim_set_keymap('c', '<M-h>', '<Left>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('c', '<M-j>', '<Down>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('c', '<M-k>', '<Up>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('c', '<M-l>', '<Right>', { noremap = true, silent = true })

        vim.api.nvim_set_keymap('t', '<M-h>', '<Left>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<M-j>', '<Down>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<M-k>', '<Up>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('t', '<M-l>', '<Right>', { noremap = true, silent = true })
    end

    --vim.api.nvim_set_keymap('t', '<c-h>', '<c-n><c-w>h', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('t', '<c-j>', '<c-n><c-w>j', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('t', '<c-k>', '<c-n><c-w>k', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('t', '<c-l>', '<c-n><c-w>l', { noremap = true, silent = true })
end

set_mappings()

