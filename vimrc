" avoid side effects
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'kevinw/pyflakes-vim'
Plugin 'alfredodeza/pytest.vim'
Plugin 'klen/rope-vim'
Plugin 'ervandew/supertab'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'nvie/vim-flake8'
Plugin 'garbas/vim-snipmate'
Plugin 'kien/ctrlp.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'flazz/vim-colorschemes'
Plugin 'Yggdroot/indentLine'
Plugin 'rosstimson/scala-vim-support'
Plugin 'klen/python-mode'
Plugin 'mileszs/ack.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'jigish/vim-thrift'
Plugin 'tpope/vim-unimpaired'
Plugin 'Lokaltog/powerline'
Plugin 'derekwyatt/vim-scala'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'davidhalter/jedi-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'honza/vim-snippets'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'saghul/vim-colortoggle'
Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'

call vundle#end()            " required
filetype plugin indent on    " required

" Shared dev options, remember that python options are o
" ~/.vim/ftplugin/python.vim
so ~/.vim/rcs/dev.vim
so ~/.vim/rcs/eye-candy.vim
so ~/.vim/rcs/misc.vim
so ~/.vim/rcs/windows.vim

set fenc=utf-8
