main:
	ln -f ~/.vim/vim-configs/.vimrc_base ~/.vimrc
	@echo "*************************"
	@echo "*                       *"
	@echo "*      Complete !!      *"
	@echo "*                       *"
	@echo "*************************"


Vundle=~/.vim/bundle/Vundle.vim
install: $(Vundle)
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

zsh:
	sudo apt-get install zsh -y
	wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	sh install.sh
	rm install.sh

theme:
	#-vim -c "%s/robbyrussell/ali/g" -c wq ~/.zshrc
	#-vim -c "%s/rkj/ali/g" -c wq ~/.zshrc
	cp zsh/ali.zshrc ~/.zshrc
	rm ~/.oh-my-zsh/themes/ali.zsh-theme
	ln zsh/ali.zsh-theme ~/.oh-my-zsh/themes/ali.zsh-theme
	chsh -s `which zsh` && zsh

clean:
	@rm -rf install*.sh
