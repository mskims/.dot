#!/bin/bash
set -e

GREEN='\e[0;32m'
RED='\e[0;31m'
RESET='\e[0m' # No Color
PWD=`pwd`

function ok {
    echo -e "[${GREEN} OK ${RESET}] $1"
}

function warning {
    echo -e "[${RED} WARNING ${RESET}] $1"
}

function error {
    echo -e "[${RED} ERROR ${RESET}] $1"
    exit -1
}

function is_installed() {
	if hash $1 2>/dev/null; then
	    return -1 # does not exist
	else
	    return 0 # exist
	fi
}

function update_submodules() {
    git submodule update --init --recursive
    ok "Submodules updated"
}

function check_predependencies() {
    pre_deps=(git pip)
    for dep in "${pre_deps[@]}"; do
        if is_installed $dep = -1; then
            error "You need $dep installed before continue"
        fi
    done
}

function install_pips() {
    packages=(flake8 ropevim pyflakes pyjokes lolcat)
    for pkg in "${packages[@]}"; do
        if is_installed $pack = -1; then
            sudo pip install $pkg
        fi
    done
}

function install_oh_my_zsh() {
    if [ ! -d ~/.oh-my-zsh ]; then
        git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
        ok "oh-my-zsh installed"
    else
        warning "~/.oh-my-zsh already exists, remove it and try again!"
    fi
}

function install_fonts() {

    if [ ! -d ~/.fonts ]; then
        git clone https://github.com/Lokaltog/powerline-fonts.git ~/.fonts
        fc-cache -vf
        ok "vim fonts installed"
    else
        warning "You already have some personal fonts, install the vim fonts manually: https://github.com/Lokaltog/powerline-fonts"
    fi
}

function create_links() {
    links=(vimrc vim zshrc zshenv gitconfig tmux.conf tmate.conf spacemacs.d pdbrc)
    for link in "${links[@]}"; do
        if [ -e ~/.$link ]; then
            warning "~/.$link already exists"
        else
            ln -s $PWD/$link ~/.$link
        fi
    done
    ok "Configurations linked properly"
}

update_submodules
check_predependencies
install_pips
install_oh_my_zsh
install_fonts
create_links
