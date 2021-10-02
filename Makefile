.PHONY: pull

pull: vimrc_pull gitignore_pull tmux_pull zshrc_pull github_pull

vimrc_pull:
	cp ~/.vimrc ./

gitignore_pull:
	cp ~/.gitignore_global ./

tmux_pull:
	cp ~/.tmux.conf ./

zshrc_pull:
	cp ~/.zshrc ./

github_pull:
	cp ~/.gitconfig ./git_config_global.ini
