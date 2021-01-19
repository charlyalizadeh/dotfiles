"██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗     ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
"██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║    ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
"██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║    ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗
"██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║    ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║
"██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║    ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝     ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

"=================================================================================
"                               PLUGIN: vimtex
"=================================================================================
let g:vimtex_view_method='zathura' 
let g:tex_flavor='latex' 


"=================================================================================
"                               PLUGIN: vim-airline
"=================================================================================
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'


"=================================================================================
"                               PLUGIN: gruvbox
"=================================================================================
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_italicize_comments=1
let g:gruvbox_italicize_strings=1
let g:gruvbox_vert_split='bg4'


"=================================================================================
"                               PLUGIN: oceanic-material
"=================================================================================
let g:oceanic_material_background='medium'
let g:oceanic_material_allow_bold=1
let g:oceanic_material_allow_italic=1
let g:oceanic_material_allow_underline=1
let g:oceanic_material_allow_undercurl=1
let g:oceanic_material_allow_reverse=1


"=================================================================================
"                               PLUGIN: oceanic-material
"=================================================================================
let g:material_style='oceanic'

"=================================================================================
"                               PLUGIN: vim-slime
"=================================================================================
let g:slime_target="neovim"


"=================================================================================
"                               PLUGIN: vim-slime
"=================================================================================
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_posix_standard=1
let g:cpp_experimental_simple_template_highlight=1
let g:cpp_concepts_highlight=1


"=================================================================================
"                               PLUGIN: ALE
"=================================================================================
" General
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'

" Python
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'
let g:ale_linters={ 'python':['flake8']}
let g:ale_fixers={'python':['black']}
"let g:ale_fix_on_save=1


"=================================================================================
"                               PLUGIN: treesitter
"=================================================================================
