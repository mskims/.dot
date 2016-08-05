Alex's dot configuration files
==============================

These are my configuration files. I am happy to receive PRs with tricks that will make my life easier, so feel free!

*I am using submodules, so if you are going to clone this repo you should do it with the `--recursive` option.*

Install ALL the things!
-----------------------

There is a script that is going to help you with the installation process:

    git clone --recursive https://github.com/agonzalezro/.dot.git
    cd .dot
    ./install.sh

It's the recommended way but take a look to the [source code](https://github.com/agonzalezro/.dot/blob/master/install.sh) before, remember: FLOSS without any kind of warranty :)

If you don't want to do this, continue reading...

Usage
-----
Clone the repo and link the files that you want in your $HOME path.

Example:

    cd $HOME;ln -s .dot/vimrc .vimrc


There are some dependencies, check the list on the [install script](https://github.com/agonzalezro/.dot/blob/master/install.sh).
