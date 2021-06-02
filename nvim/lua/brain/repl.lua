
local iron = require('iron')
local view = require("iron.view")
local ll = require("iron.lowlevel")


iron.core.set_config {
  preferred = {
    julia = "julia",
  },
}

--iron.config.repl_open_cmd = "botright vertical 40 split"

-- TERMINAL
-- open repl
--vim.api.nvim_set_keymap('', '<leader>or', ':IronRepl<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('', '<leader>rs', [[<Cmd>lua my_iron_open_fn("rightbelow split")<Cr><Esc>]], { noremap = true, silent = true })
--vim.api.nvim_set_keymap('', '<leader>rv', [[<Cmd>lua my_iron_open_fn("botright vertical split")<Cr><Esc>]], { noremap = true, silent = true })

-- nmap B <Cmd>lua my_iron_open_fn("rightbelow split")<Cr><Esc>
-- nmap L <Cmd>lua my_iron_open_fn("topleft vertical split")<Cr><Esc>

-- send current line to repl
vim.api.nvim_set_keymap('', '<leader>sl', [[<Cmd>lua require('iron').core.send_line()<CR>]], { noremap = true, silent = true })
-- send current file to repl
--vim.api.nvim_set_keymap('', '<leader>sf', ':TREPLSendFile<CR>', { noremap = true, silent = true })
-- send register to repl
vim.api.nvim_set_keymap('', '<leader>sv', [[<Cmd>lua require('iron').core.visual_send()<CR>]], { noremap = true, silent = true })

-- JULIA
-- open julia split-horizontal
-- vim.api.nvim_set_keymap('', '<leader>ojs', ':botright 2Topen<CR> :T julia<CR>', { noremap = true, silent = true })
-- open julia split-horizontal
-- vim.api.nvim_set_keymap('', '<leader>ojv', ':vertical 2Topen<CR> :T julia<CR>', { noremap = true, silent = true })

_G.repl_split = function(sp, new_win)
    ft = vim.bo.filetype
    local mem = ll.get(ft)
    local created = false

    if mem == nil or vim.fn.bufname(mem.bufnr) == "" then
        local repl = ll.get_preferred_repl(ft)

        if repl ~= nil then
            -- make creation of new windows optional
            if new_win == nil then
                new_win = true
            end

            local winid
            local prevwin = vim.api.nvim_get_current_win()
            local bufnr = vim.api.nvim_create_buf(false, true)

            if new_win then
                winid = view.openwin(sp, bufnr)
            else
                if ll.get(ft) == nil then
                    winid = vim.api.nvim_get_current_win()
                    vim.api.nvim_win_set_buf(winid, bufnr)
                else
                    winid = ll.get(ft).winid
                end
            end

            vim.api.nvim_set_current_win(winid)
            local job_id = vim.fn.termopen(repl.command)

            local inst = {
                bufnr = bufnr,
                job = job_id,
                repldef = repl,
                winid = winid
            }

            local timer = vim.loop.new_timer()
            timer:start(10, 0, vim.schedule_wrap(function()
                vim.api.nvim_set_current_win(prevwin)
            end))
            mem = ll.set(ft, inst)
        end
        created = true
    end

    if created then
        vim.api.nvim_command('wincmd p')
    else
        local window = vim.fn.bufwinnr(mem.bufnr)
        if window == -1 then
            vim.api.nvim_command(vim.fn.win_id2win(view.openwin(sp, mem.bufnr)) .. "wincmd p")
        else
            vim.api.nvim_command(window .. "wincmd c")
        end
    end

    return mem
end


vim.api.nvim_set_keymap('', '<leader>rv', [[<Cmd>lua repl_split('vsplit')<Cr><Esc>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<leader>rs', [[<Cmd>lua repl_split('split')<Cr><Esc>]], { noremap = true, silent = true })


--[[
        local showfn = function()
            return 
        end
        require('iron.visibility').toggle(mem.bufnr. showfn)
        ]]--
