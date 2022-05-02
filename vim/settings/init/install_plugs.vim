" dein Script
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
" Required:
call dein#begin('$HOME/.cache/dein')

call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" 背景を透明に
call dein#add("miyakogi/seiya.vim")

" Rustの自動整形
" call dein#add('rust-lang/rust.vim')

" 補完機能
"構文チェックを行う。
call dein#add('scrooloose/syntastic')

"() 色付け:
call dein#add('itchyny/lightline.vim')

" Required:
call dein#end()

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif