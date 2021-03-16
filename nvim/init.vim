
filetype plugin indent on " Enable Plugins
set nocompatible          " Turn off 'vi compatability' mode

set termguicolors
" Determine whether or not we're inside vscode
let g:using_vscode = exists('g:vscode')

" Determine whether or not to use the built-in LSP.
if !exists('g:using_nvim_lsp')
    let g:using_nvim_lsp = has('nvim-0.5') && !g:using_vscode
endif

if has('nvim-0.5') " Source packer.nvim configuration
    lua require("init")

    lua require 'plugins/packer'

    if &loadplugins " Load conditional plugins
        lua require 'plugins/init'
    elseif !g:using_vscode " Just load the colorscheme
        packadd nvim-highlite
    endif
else " Source vim-plug config
    runtime init/plug.vim
endif

function! ToggleWindowHorizontalVerticalSplit()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical' " is vertical switch to horizontal
    windo wincmd K
    let t:splitType = 'horizontal'

  else " is horizontal switch to vertical
    windo wincmd H
    let t:splitType = 'vertical'
  endif
endfunction

let g:vim_markdown_fenced_languages = ['python', 'bash=sh', 'jldoctest=julia', 'julia=julia']

let g:vim_markdown_folding_style_pythonic = 1

nnoremap <silent> <leader>wt :call ToggleWindowHorizontalVerticalSplit()<cr>

let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:indentLine_char = '│'

command! -bang -complete=dir ProjectFiles call fzf#vim#files('~/projects', <bang>0)

set conceallevel=2
let g:vim_markdown_conceal = 0

"colorscheme one


