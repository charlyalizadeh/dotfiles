"██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
"██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
"█████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
"██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
"██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
"╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


"=================================================================================
"                               non-Plugin Keybindings
"=================================================================================

"Leader key
let mapleader = " "


"                            =======================                              
"                                   Tab/Window
"                            =======================                              

"Move between buffer
nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>

"Split
nnoremap <leader>ws :split <cr>
nnoremap <leader>wv :vsplit <cr>

"Close
nnoremap <leader>wc :q <cr>

"Open terminal

nnoremap <leader>ot :set splitbelow <cr> :split <cr> :resize 15 <cr> :terminal <cr> :start <cr>
"Quit terminal input
tnoremap <leader><Esc> <C-\><C-N>

"Resize all terminal
nnoremap <leader>w= <C-W>=
"Maximize window
nnoremap <leader>wo :call MaximizeWindowSize() <cr>


"                            =======================                              
"                                     Buffer
"                            =======================                              

"Switch between buffer (Azerty keyboards, change if you use an QWERTY keyboard)
nnoremap <leader>& :b1 <CR>
nnoremap <leader>é :b2 <CR>
nnoremap <leader>" :b3 <CR>
nnoremap <leader>' :b4 <CR>
nnoremap <leader>( :b5 <CR>
nnoremap <leader>- :b6 <CR>
nnoremap <leader>è :b7 <CR>
nnoremap <leader>_ :b8 <CR>
nnoremap <leader>ç :b9 <CR>
nnoremap <leader>à :b0 <CR>

"Close (and save if `&modifiable` is set) all buffer
nnoremap <leader>ww :call SaveAndCloseAllTabBuffer() <cr>

"Kill buffer
nnoremap <leader>bk :call KillBuffer() <cr>


"                            =======================                              
"                                     Misc
"                            =======================                              

"Prevent from using arrow keys 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Auto closed 
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Reset highlight
nnoremap <Leader><Leader> :noh<CR>

"Resize
nnoremap <Left> :vertical resize+5 <CR>
nnoremap <Right> :vertical resize-5 <CR>
nnoremap <Up> :resize+5 <CR>
nnoremap <Down> :resize-5 <CR>

"Correct some wrong highlight when a part of the code is considered
"as a string
noremap <F2> :syntax sync fromstart <CR>

"Reload colorscheme
nnoremap <F3> :colorscheme elly <CR>

"Insert equation environment in LaTeX
autocmd filetype tex inoremap <buffer>,e \[\]<left><left><cr><cr><up><Esc>cc
autocmd filetype tex inoremap <buffer>,i  \(\)<left><left>


"                            =======================                              
"                                 Running Program
"                            =======================                              

"REPL
"Python
autocmd filetype python nnoremap <buffer> <f6> :set splitright <bar> :vsplit <bar> :terminal python <CR>
autocmd filetype python nnoremap <buffer> <f5> :w <bar> :set splitright <bar> :vsplit <bar> :terminal python %<CR>
"Julia
autocmd filetype julia nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal julia <CR>
"R
autocmd filetype r nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal R <CR>
autocmd filetype rmarkdown nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal R <CR>

"OTHER
"C#
autocmd filetype cs nnoremap <f5> :w <bar> :!mcs % <CR> :set splitright <bar> :vsplit <bar> :terminal ./'%:r.exe' <CR>
"Javascript
autocmd filetype javascript nnoremap <buffer> <f5> :w  <bar> :!firefox ./index.html <CR>
"C++
autocmd filetype cpp nnoremap <buffer> <f5> :w <bar> :packadd termdebug <bar> :Termdebug a.out <CR>
"HTML
autocmd filetype html nnoremap <buffer> <f5> :w <bar> :!firefox % <CR>


"=================================================================================
"                               Plugin Keybindings
"=================================================================================

"CHADTree
nnoremap <Leader><Tab> <cmd>w <bar> :CHADopen<CR>
autocmd filetype CHADTree nnoremap <buffer> <Leader><Tab> :q <CR>

"Nvim-R
nmap <silent><Leader>b <Plug>RSendChunk<CR>
vmap <silent><Leader>b <Plug>RSendChunk<CR>

"vim-slime
autocmd filetype python,julia,r nmap <C-i> RSlimeSendCurrentLine <CR>

"Goyo
nmap <silent><Leader>g :Goyo<CR>

"Nvim-R
autocmd filetype r,rmarkdown inoremap <buffer> <_> _

"fzf
nnoremap <silent> <Leader>. :Files %:p:h<cr>
nnoremap <silent> <Leader>bb :Buffers <cr>
