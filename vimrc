" avoid side effects
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Lokaltog/powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'alfredodeza/pytest.vim'
Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'davidhalter/jedi-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'garbas/vim-snipmate'
Plugin 'gregsexton/MatchTag'
Plugin 'honza/vim-snippets'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'jaxbot/github-issues.vim'
Plugin 'jigish/vim-thrift'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kevinw/pyflakes-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'klen/rope-vim'
Plugin 'mileszs/ack.vim'
Plugin 'nvie/vim-flake8'
Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'rosstimson/scala-vim-support'
Plugin 'saghul/vim-colortoggle'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/HTML-AutoCloseTag'
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
