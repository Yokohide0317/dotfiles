syntax enable

set autoindent
set smartindent
set foldmethod=marker
set foldmarker={{{,}}}

set encoding=utf-8
scriptencoding utf-8

set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup
set noswapfile

set nu
set showmatch matchtime=1
set expandtab
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set hlsearch
set nolist
set incsearch
set ignorecase
set smartcase
set guioptions-=m
set wildmenu
set wildmode=list:longest

" Set backups
if has('persistent_undo')
  set undodir=~/.vim/tmp/undo//     " undo files
  set undofile
  set undolevels=3000
  set undoreload=10000
endif

nmap <silent> <leader>/ :nohlsearch<CR>

filetype off
filetype plugin on

" Only open nerdtree if no file was specified on startup
function! StartUpNerdtree()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUpNerdtree()

"Tagbar Options
"latest version is only compatible with vim >= 701
if v:version > 700
    " Bundle 'majutsushi/tagbar'
    " Same as nerdtree, only open if no file was specified
    function! StartUpTagbar()
        if 0 == argc()
           TagbarOpen
        end
    endfunction

    autocmd VimEnter * call StartUpTagbar()
endif


" Ctrlp Options
" Ignore files we don't want to index
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn
" custom starting default search folder
let g:ctrlp_map = '<c-p>'
" SuperTab options
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabLongestHighlight = 2
let g:SuperTabClosePreviewOnPopupClose = 1

" Tagbar Options
let g:tagbar_show_visibility = 1
let g:tagbar_expand = 1


hi Comment ctermfg=3
au! BufWritePost .vimrc so %
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
cmap w!! w !sudo tee %

set completeopt=menuone,noinsert
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

nnoremap <Leader>c :<C-u>setlocal cursorline! cursorcolumn!<CR>

" カーソル
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line