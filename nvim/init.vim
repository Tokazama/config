
filetype plugin indent on " Enable Plugins
set nocompatible          " Turn off 'vi compatability' mode

set termguicolors

lua require("init")

let g:vim_markdown_fenced_languages = ['python', 'bash=sh', 'jldoctest=julia', 'julia=julia']

let g:vim_markdown_folding_style_pythonic = 1

let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:indentLine_char = '│'

command! -bang -complete=dir ProjectFiles call fzf#vim#files('~/projects', <bang>0)

set conceallevel=2
let g:vim_markdown_conceal = 0

"colorscheme one


