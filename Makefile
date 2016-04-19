main:	
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	ln -f ~/.vim/.vimrc ~/.vimrc
	vim +PluginInstall +qall

	@echo "*************************"
	@echo "*                       *"
	@echo "*      Complete !!      *"
	@echo "*                       *"
	@echo "*************************"

new:
	vim +PluginClean +qall
	vim +PluginInstall +qall

	@echo "*************************"
	@echo "*                       *"
	@echo "*      Complete !!      *"
	@echo "*                       *"
	@echo "*************************"
