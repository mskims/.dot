if [ -e ~/bin ]; then
    export PATH=$PATH:~/bin
fi

if [ -e ~/android-sdk-linux ]; then
    export PATH=$PATH:~/android-sdk-linux/tools
fi

if [ -e ~/terraform ]; then
    export PATH=$PATH:~/terraform
fi

if [ -e /usr/local/heroku/bin ]; then
    export PATH=$PATH:/usr/local/heroku/bin
fi

export GOPATH=~/go
if [ -e $GOPATH/bin ]; then
    export PATH=$PATH:$GOPATH/bin
fi

if [ -e ~/elixir ]; then
    PATH=$PATH:~/elixir/bin
fi
