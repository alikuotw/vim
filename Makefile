main:
	ln -f ~/.vim/.vimrc_base ~/.vimrc
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

custom:
	ln -f ~/.vim/.vimrc_custom ~/.vimrc
	@echo "*************************"
	@echo "*                       *"
	@echo "*   Complete custom.    *"
	@echo "*                       *"
	@echo "*************************"

all:
	make && make install
	@echo "Installing zsh"
	sudo apt-get install zsh -y
	@echo "Downloading oh-my-zsh"
	wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh 
	@echo "Install oh-my-zsh..."
	sh install.sh
	@echo "Remove install file"
	rm install.sh
	@echo "Set default shell"
	chsh -s `which zsh`
	@echo "Change to rkj theme"
	vim -c "%s/robbyrussell/rkj/g" -c wq ~/.zshrc
	zsh
	@echo "FINISH."
