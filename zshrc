# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias pep8='pep8 --show-source'
alias pepocho='pep8'
alias check-pep8="find . -name '*.py*' -exec pep8 --ignore=E501 {} \;"
alias ..='cd ..'
alias ....='cd ....'
alias pcat='pygmentize -O bg=dark'
alias doctest='python -m doctest'
alias maild="sudo python -c 'import smtpd, asyncore; smtpd.DebuggingServer((\"127.0.0.1\", 25), None); asyncore.loop()'"
alias ff='find . -iname'
alias debug='cat > /tmp/debug.html&&w3m /tmp/debug.html'
alias vi='vim'
alias t='tmux a||tmux new-s'

# Path variables
if [ -e $HOME/bin ]; then
    export PATH=$PATH:$HOME/bin
fi
if [ -e $HOME/android-sdk-linux ]; then
    export PATH=$PATH:$HOME/android-sdk-linux/tools
fi

# Pl editor
export EDITOR="vim"

alias manage="python manage.py"
alias mgr="python manage.py runserver"
alias mgs="python manage.py shell"
alias mgd="python manage.py dbshell"
alias unquote="python -c 'import sys, urllib; print urllib.unquote_plus(sys.argv[1])'"
alias jsonize="python -mjson.tool"
alias ack-py="ack --type=python"
alias mvim="mvim --remote-tab-silent"
alias fuck='$(thefuck $(fc -ln -1))'

# oh-my-zsh confs
# This is the project page: https://github.com/robbyrussell/oh-my-zsh/
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(
    docker
    git
    github
    golang
    jsontools
    mercurial
    osx
    pep8
    pip
    python
    safe-paste
    tmux
    vagrant
    vim
    virtualenvwrapper
)
source $ZSH/oh-my-zsh.sh

setopt nocorrect_all

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# No autocompletion
alias git="nocorrect git"
alias sbt="nocorrect sbt"
alias play="nocorrect play"

export TERM=screen-256color

# Force activation on venvs
cd .

export PATH=$GOPATH/bin:$PATH
export GOPATH="$HOME/go"

# Avoid zsh to complain about bg processes
setopt NO_HUP
setopt NO_CHECK_JOBS

CHRUBY_PATH="/usr/local/share/chruby/chruby.sh"
if [ -e "$CHRUBY_PATH" ]; then
	source $CHRUBY_PATH
	chruby 2.2.2
fi

alias be="bundle exec"
alias irssi='TERM=screen-256color irssi'
alias vi{,m}=nvim

pyjoke 2> /dev/null|cowsay -f small 2> /dev/null|lolcat 2> /dev/null
source /usr/local/opt/autoenv/activate.sh

export ANSIBLE_NOCOWS=1

unalias gb

source /Users/alex/.iterm2_shell_integration.zsh

export GO15VENDOREXPERIMENT=1

eval $(docker-machine env default)
