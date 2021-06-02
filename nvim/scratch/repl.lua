
package.loaded['brain.repl'] = nil

local M = {}

M.repl_id = nil

-- buffers to corresponding repls
M.repl_map = {}

function M.create_repl_split(rcall)
  if not M.repl_id then
    vim.cmd [[20new]]
    M.repl_id = vim.fn.termopen(rcall)

    vim.wait(100, function() return false end)
  end
end

function M.create_repl_vsplit(rcall)
  if not M.repl_id then
    vim.cmd [[vsplit 20new]]
    M.repl_id = vim.fn.termopen(rcall)

    vim.wait(100, function() return false end)
  end
end

function M.send_repl_line()
  M.create_repl()

  vim.fn.chansend(M.repl_id, vim.fn.getline('.') .. "\n")
end

-- TODO: Remember how to actually do this...
function M.send_repl_selection()
  M.create_repl()

  local pos1 = vim.fn.getpos("'[")
  local pos2 = vim.fn.getpos("']")

  print(vim.inspect(pos1), vim.inspect(pos2))
end




vim.api.nvim_set_keymap('', '<leader>njs', [[:call luaeval("require('brain.repl').create_repl_split('julia')")<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<leader>njv', [[:call luaeval("require('brain.repl').create_repl_vsplit('julia')")<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<leader>sl', [[:call luaeval("require('brain.repl').send_repl_line()")<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>sl', [[:call luaeval("require('brain.repl').send_repl_selection()")<CR>]], { noremap = true, silent = true })

return M
