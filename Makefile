main:
	ln -f ~/.vim/vim-configs/.vimrc_base ~/.vimrc
	ln -f ~/.vim/my-configs/screen/.screenrc ~/.screenrc
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*               Completed                 *"
	@echo "*                                         *"
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*   "make install" for install bundle.    *"
	@echo "*   "make myzsh" for install zsh shell.   *"
	@echo "*   "make theme" for install zsh theme.   *"
	@echo "*   "make gitconfig" for git settings.    *"
	@echo "*   "make clean" for remove install file. *"
	@echo "*                                         *"
	@echo "*                                         *"
	@echo "*******************************************"

Vundle=~/.vim/bundle/Vundle.vim
install: $(Vundle)
	vim +PluginClean +qall
	vim +PluginInstall +qall

	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*    Bundle installation is completed.    *"
	@echo "*                                         *"
	@echo "*******************************************"

$(Vundle):
	@echo "Vundle will not find ready to install"; \
	if [ ! -d "$(Vundle)" ]; then \
		git clone https://github.com/VundleVim/Vundle.vim.git $(Vundle); \
	fi

myzsh:
	sudo apt-get install zsh -y
	wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	sh install.sh
	rm install.sh
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*   ZSH Shell installation is completed.	 *"
	@echo "*                                         *"
	@echo "*******************************************"

theme:
	cp zsh/ali.zshrc ~/.zshrc
	-rm ~/.oh-my-zsh/themes/ali.zsh-theme
	ln zsh/ali.zsh-theme ~/.oh-my-zsh/themes/ali.zsh-theme
	chsh -s `which zsh` && zsh
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*   ZSH theme installation is completed.	 *"
	@echo "*                                         *"
	@echo "*******************************************"

gitconfig:
	@-rm ~/.gitconfig
	@git config --global user.name "alikuotw"
	@git config --global user.email "alikuotw@gmail.com"
	@git config --global core.editor vim
	@git config --global alias.ci commit
	@git config --global alias.cim "commit -m"
	@git config --global alias.st status
	@git config --global alias.ck checkout
	@git config --global alias.l log
	@git config --global alias.lg "log --graph --oneline"
	@git config --global alias.r "remote -v"
	@git config --global alias.b branch
	@git config --global alias.d diff
	@git config --global alias.ll "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*   Git config settings completed.        *"
	@echo "*                                         *"
	@echo "*******************************************"

clean:
	@rm -rf install*.sh
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "*   Remove installation file.          	 *"
	@echo "*                                         *"
	@echo "*******************************************"
