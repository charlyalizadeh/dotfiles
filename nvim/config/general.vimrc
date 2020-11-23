" ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗     
"██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║     
"██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║     
"██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║     
"╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗
" ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

"Termdebug on the left side
let g:termdebug_wide=1

"Default folding method
set foldmethod=syntax

"General folding options
autocmd filetype python set foldmethod=indent 
autocmd filetype julia set foldmethod=indent 
autocmd filetype tex set foldmethod=expr | :set foldexpr=vimtex#fold#level(v:lnum) | :set foldtext=vimtex#fold#text() | :set fillchars=fold:\
autocmd filetype CHADTree set nofoldenable


"Colorscheme setup
syntax on
set termguicolors
let base16colorspace=256
set background=dark
set t_Co=16
colorscheme elly

"Basic setup
set nu
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent smarttab
set nowrap
set noswapfile
set incsearch
set undodir=~/.config/.nvim/undodir
set undofile

"Set .jl filetype as julia file
autocmd BufRead,BufNewFile *.jl :set filetype=julia

"Allow moving between buffer without saving
set hidden

"Indent line
set listchars=tab:\|\
set list
