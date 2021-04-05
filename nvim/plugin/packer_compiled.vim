" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/zchristensen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/zchristensen/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/zchristensen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/zchristensen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/zchristensen/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["JuliaFormatter.vim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/JuliaFormatter.vim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  indentLine = {
    config = { "\27LJ\2\n5\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\b│\20indentLine_char\6g\bvim\0" },
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["iron.nvim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/iron.nvim"
  },
  ["julia-vim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/julia-vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nvim-colorizer.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/zchristensen/.local/share/nvim/site/pack/packer/start/vim-markdown"
  }
}

-- Config for: indentLine
try_loadstring("\27LJ\2\n5\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\b│\20indentLine_char\6g\bvim\0", "config", "indentLine")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
