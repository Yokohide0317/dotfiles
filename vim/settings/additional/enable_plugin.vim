" 背景を透明に
let g:seiya_auto_enable=1

" Rustの自動整形
" let g:rustfmt_autosave = 1

" Required:
filetype plugin indent on
syntax enable

let g:kite_supported_languages = ['*']

"Vim-airline Options
set noshowmode                    " -- Hide default mode indicator
set laststatus=2                  " -- Show airline even when only one split is open
let g:airline_powerline_fonts = 1 " -- Allow fancy separators
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme = 'bubblegum'