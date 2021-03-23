
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end

require('core')
require('plugins/packer')
require('plugins/init')

