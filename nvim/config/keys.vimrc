"██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
"██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
"█████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
"██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
"██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
"╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

"Leader key
let mapleader = ","


"Move between buffer
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

"Key bindings to reset highlight
nnoremap <Leader><Leader> :noh<CR>


"=================================================================================
"                               Running program
"=================================================================================
"REPL
"Python
autocmd filetype python nnoremap <buffer> <f6> :set splitright <bar> :vsplit <bar> :terminal python <CR>
autocmd filetype python nnoremap <buffer> <f5> :w <bar> :set splitright <bar> :vsplit <bar> :terminal python %<CR>

"Julia
autocmd filetype julia nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal julia <CR>

"OTHER
"C#
autocmd filetype cs nnoremap <f5> :w <bar> :!mcs % <CR> :set splitright <bar> :vsplit <bar> :terminal ./'%:r.exe' <CR>
"Javascript
autocmd filetype javascript nnoremap <buffer> <f5> :w  <bar> :!firefox ./index.html <CR>
"C++
autocmd filetype cpp nnoremap <buffer> <f5> :w <bar> :packadd termdebug <bar> Termdebug a.out <CR>
"HTML
autocmd filetype html nnoremap <buffer> <f5> :w <bar> :!firefox % <CR>



"=================================================================================
"                               Other non-Plugin Keybindings
"=================================================================================

"Resize
nnoremap <Left> :vertical resize+5 <CR>
nnoremap <Right> :vertical resize-5 <CR>
nnoremap <Up> :resize+5 <CR>
nnoremap <Down> :resize-5 <CR>

"Next buffer
noremap <F4> :q <CR>

"BufferLine
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

"Correct some wrong highlight when a part of the code is considered
"as a string
noremap <F2> :syntax sync fromstart <CR>

"=================================================================================
"                               Plugin Keybindings
"=================================================================================

"CHADTree
nnoremap <Leader><Tab> <cmd>w <bar> :CHADopen<CR>

"Nvim-R
nmap <silent><Leader>b <Plug>RSendChunk<CR>
vmap <silent><Leader>b <Plug>RSendChunk<CR>

"vim-slime
autocmd filetype python,julia nmap <C-i> RSlimeSendCurrentLine <CR>

"Goyo
nmap <silent><Leader>g :Goyo<CR>
