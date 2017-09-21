main:
	ln -f ~/.vim/.vimrc_base ~/.vimrc
	@echo "*************************"
	@echo "*                       *"
	@echo "*      Complete !!      *"
	@echo "*                       *"
	@echo "*************************"


Vundle=~/.vim/bundle/Vundle.vim
install: $(Vundle)
	sudo apt-get install zsh -y
	sh -c '(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)'
	vim +PluginClean +qall
	vim +PluginInstall +qall

	@echo "*************************"
	@echo "*                       *"
	@echo "*   Complete Install    *"
	@echo "*                       *"
	@echo "*************************"

$(Vundle):
	@echo "Vundle will not find ready to install"; \
	if [ ! -d "$(Vundle)" ]; then \
		git clone https://github.com/VundleVim/Vundle.vim.git $(Vundle); \
	fi

custom:
	ln -f ~/.vim/.vimrc_custom ~/.vimrc
	@echo "*************************"
	@echo "*                       *"
	@echo "*   Complete custom.    *"
	@echo "*                       *"
	@echo "*************************"

all:
	make && make install

#$(VIM):
#	if [ ! -d "$(VIM)" ]; then \
		mkdir $(VIM); \
		git clone https://github.com/alikuotw/vim.git $(VIM)/vim; \
	fi
	
