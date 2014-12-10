install: install-git install-pip install-psql install-python install-terminator install-tmux install-tmuxinator install-vim install-zsh


install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/gitconfig ~/.gitconfig


install-pip:
	mkdir -p ~/.pip
	rm -f ~/.pip/pip.conf
	ln -s `pwd`/pip.conf ~/.pip/pip.conf


install-psql:
	rm -f ~/.psqlrc
	ln -s `pwd`/psqlrc ~/.psqlrc


install-python:
	rm -f ~/.pythonrc.py
	ln -s `pwd`/pythonrc.py ~/.pythonrc.py


install-terminator:
	rm -f ~/.config/terminator/config
	ln -s `pwd`/terminator.conf ~/.config/terminator/config


install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf


install-tmuxinator:
	mkdir -p ~/.tmuxinator
	rm -f ~/.tmuxinator/default.yml
	ln -s `pwd`/tmuxinator/default.yml ~/.tmuxinator/default.yml


install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s `pwd`/vimrc ~/.vimrc


install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zshrc ~/.zshrc
	mkdir -p ~/.oh-my-zsh/custom/plugins
	ln -s `pwd`/oh-my-zsh-custom-plugins/tmux ~/.oh-my-zsh/custom/plugins/tmux
