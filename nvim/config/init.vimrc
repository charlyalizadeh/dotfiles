"██╗   ██╗██╗███╗   ███╗      ██████╗ ██╗     ██╗   ██╗ ██████╗
"██║   ██║██║████╗ ████║      ██╔══██╗██║     ██║   ██║██╔════╝ 
"██║   ██║██║██╔████╔██║█████╗██████╔╝██║     ██║   ██║██║  ███╗
"╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██╔═══╝ ██║     ██║   ██║██║   ██║
" ╚████╔╝ ██║██║ ╚═╝ ██║      ██║     ███████╗╚██████╔╝╚██████╔╝
"  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ 

call plug#begin('~/.config/nvim/plugged')

"Colorschemes
Plug 'challenger-deep-theme/vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'hardcoreplayers/oceanic-material' 
Plug 'fxn/vim-monochrome'
Plug 'vimoxide/vim-cinnabar'
Plug 'cocopon/iceberg.vim' 
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim' 
Plug 'ryuta69/elly.vim'
Plug 'chriskempson/base16-vim'  
Plug 'hzchirs/vim-material'

"Status and Tab line and themes for it
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'

"Bufferline
Plug 'bling/vim-bufferline'

"Auto completion with deep learning 
Plug 'zxqfl/tabnine-vim'

"Eslint live
Plug 'dense-analysis/ale'

"Syntax highlight C++
Plug 'octol/vim-cpp-enhanced-highlight'

"Hexadecimal display 
Plug 'chrisbra/Colorizer'

"To surround anything with simplicity
Plug 'tpope/vim-surround'

"For editing and compiling Tex file
Plug 'lervag/vimtex'

"A file in NeoVim
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

"For editing and compiling Rmarkdown files
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

"To works with R environment
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

"To work with Julia environment
Plug 'JuliaEditorSupport/julia-vim'

"To work with all REPL 
Plug 'jpalardy/vim-slime'

"Markdown
Plug 'plasticboy/vim-markdown'

"Goyo
Plug 'junegunn/goyo.vim'

"pudb for python debug
Plug 'SkyLeach/pudb.vim'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"repeat.vim
Plug 'tpope/vim-repeat'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
