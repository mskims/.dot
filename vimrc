" avoid side effects
set nocompatible
filetype off

let g:python_host_prog='/usr/local/bin/python2.7'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'airblade/vim-gitgutter'
Plugin 'alfredodeza/pytest.vim'
Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'Chiel92/vim-autoformat'
Plugin 'davidhalter/jedi-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'garbas/vim-snipmate'
Plugin 'gregsexton/MatchTag'
Plugin 'honza/vim-snippets'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'jigish/vim-thrift'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kevinw/pyflakes-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'klen/rope-vim'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'mileszs/ack.vim'
Plugin 'nvie/vim-flake8'
Plugin 'plasticboy/vim-markdown'
Plugin 'rosstimson/scala-vim-support'
Plugin 'saghul/vim-colortoggle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'

call vundle#end()            " required
filetype plugin indent on    " required

so ~/.vim/rcs/ansible.vim
so ~/.vim/rcs/colortoggle.vim
so ~/.vim/rcs/ctrlp.vim
so ~/.vim/rcs/dev.vim
so ~/.vim/rcs/eye-candy.vim
so ~/.vim/rcs/misc.vim
so ~/.vim/rcs/pymode.vim
so ~/.vim/rcs/supertab.vim
so ~/.vim/rcs/syntactic.vim
so ~/.vim/rcs/tagbar.vim
so ~/.vim/rcs/undotree.vim
so ~/.vim/rcs/vim-airline.vim
so ~/.vim/rcs/vim-easymotion.vim
so ~/.vim/rcs/windows.vim

so ~/.vim/rcs/learning.vim

set fenc=utf-8
