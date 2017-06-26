#
# Aliases
#

# New
alias ....='cd ....'
alias ..='cd ..'
alias ack-py="ack --type=python"
alias be="bundle exec"
alias check-pep8="find . -name '*.py*' -exec pep8 --ignore=E501 {} \;"
alias debug='cat > /tmp/debug.html&&w3m /tmp/debug.html'
alias doctest='python -m doctest'
alias e=emacs
alias ff='find . -iname'
alias fgrep='fgrep --color=auto'
alias fuck='$(thefuck $(fc -ln -1))'
gs() {
  git diff --numstat|awk -F"\t" '{a+=$1;r+=$2} END {print "+"a,"-"r}'
}
alias jsonize="python -mjson.tool"
alias maild="sudo python -c 'import smtpd, asyncore; smtpd.DebuggingServer((\"127.0.0.1\", 25), None); asyncore.loop()'"
alias manage="python manage.py"
alias mgd="python manage.py dbshell"
alias mgr="python manage.py runserver"
alias mgs="python manage.py shell"
alias pcat='pygmentize -O bg=dark'
alias t='tmux a||tmux new-s'
alias unquote="python -c 'import sys, urllib; print urllib.unquote_plus(sys.argv[1])'"
alias vi='vim'

# Overrides
alias egrep='egrep --color=auto'
alias emacs="emacs -nw"
alias git="nocorrect git"
alias grep='grep --color=auto'
alias irssi='TERM=screen-256color irssi'
alias ls='ls -G'
alias mvim="mvim --remote-tab-silent"
alias pep8='pep8 --show-source'
alias play="nocorrect play"
alias sbt="nocorrect sbt"


#
# OH-MY-ZSH
#

# This is the project page: https://github.com/robbyrussell/oh-my-zsh/
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys" # ys, kolo & zhann
plugins=(
    autoenv
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

# Avoid zsh to complain about bg processes
setopt NO_HUP
setopt NO_CHECK_JOBS


#
# RUBY
#
CHRUBY_PATH="/usr/local/opt/chruby/share/chruby/chruby.sh"
if [ -e "$CHRUBY_PATH" ]; then
    source $CHRUBY_PATH
    chruby 2.1.5
fi

CHRUBY_AUTO_PATH="/usr/local/opt/chruby/share/chruby/auto.sh"
if [ -e "$CHRUBY_AUTO_PATH" ]; then
    source $CHRUBY_AUTO_PATH
fi

#
# GCLOUD
#

# Mac
cloud_sdk=/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
if [ -e $cloud_sdk ]; then
    source $cloud_sdk/path.zsh.inc
    source $cloud_sdk/completion.zsh.inc
fi


#
# MAC
#
iterm2_integration=~/.iterm2_shell_integration.zsh
if [ -e $iterm2_integration ]; then
    source /Users/alex/.iterm2_shell_integration.zsh
fi


#
# OTHERS
#
export ANSIBLE_NOCOWS=1
export GO15VENDOREXPERIMENT=1
export EDITOR="vim"

cd . # Force reloading of .env & virtual envs
pyjoke 2> /dev/null|cowsay -f small 2> /dev/null|lolcat 2> /dev/null
eval "$(rbenv init - zsh)"
