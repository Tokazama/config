
local lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

function _G.reload_lsp()
  vim.lsp.stop_client(vim.lsp.get_active_clients())
  vim.cmd [[edit]]
end

function _G.open_lsp_log()
  local path = vim.lsp.get_log_path()
  vim.cmd("edit " .. path)
end

vim.cmd('command! -nargs=0 LspLog call v:lua.open_lsp_log()')
vim.cmd('command! -nargs=0 LspRestart call v:lua.reload_lsp()')


local enhance_attach = function(client,bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

lspconfig.julials.setup{
    on_attach = custom_attach
}

local servers = {'julials'}

for _,server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = enhance_attach
  }
end

--[[
local custom_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
        hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
        hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
        augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
    \]\], false)
    end
end
]]--

--[[
require'lspconfig'.julials.setup{
    on_new_config = function(new_config,new_root_dir)
      server_path = "julia -e 'print(Base.find_package(\"LanguageServer\"))'"
      cmd = {
        "julia",
        "--project="..server_path,
        "--startup-file=no",
        "--history-file=no",
        "-e",
        "using Pkg;",
        "Pkg.instantiate()",
        "using LanguageServer; using SymbolServer;",
        "depot_path = get(ENV, \"JULIA_DEPOT_PATH\", \"\")",
        "project_path = dirname(something(Base.current_project(pwd()), Base.load_path_expand(LOAD_PATH[2])))",
        "@info \"Running language server\" env=Base.load_path()[1] pwd() project_path depot_path",
        "server = LanguageServer.LanguageServerInstance(stdin, stdout, project_path, depot_path);",
        "server.runlinter = true;",
        "run(server);"
    };
      new_config.cmd = cmd
    end
}
]]--


--[[
    vim.api.nvim_set_keymap('', '<leader>ll', ':lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lf', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lh', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>li', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>ls', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lt', ':lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lr', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>l0', ':lua vim.lsp.buf.document_symbol()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lw', ':lua vim.lsp.buf.workspace_symbol()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lg', ':lua vim.lsp.buf.show_line_diagnostics()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>ln', ':lua vim.lsp.buf.goto_next()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>lp', ':lua vim.lsp.buf.goto_previous()<CR>', { noremap = true, silent = true })

    vim.api.nvim_set_keymap('', '<leader>la', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
]]--
