set ts=4

" Format the file before saving
autocmd BufWrite *.go Fmt

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
