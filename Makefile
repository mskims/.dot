all:
	ln -sf $(PWD)/vimrc $(HOME)/.vimrc
	ln -sf $(PWD)/vim $(HOME)/.vim
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	ln -sf $(PWD)/zshrc $(HOME)/.zshrc
	# TODO: check if the line exists
	echo "%include $(PWD)/hg" >> $(HOME)/.hgrc
	ln -sf $(PWD)/terminator $(HOME)/.config
	ln -sf $(PWD)/gitconfig $(HOME)/.gitconfig
