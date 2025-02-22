#!/bin/bash

#GitHub variables
REPO_URL="https://github.com/amkelly97/dotfiles/blob/main/.vimrc"
VIMRC_PATH="$HOME/.vimrc"
VUNDLE_PATH="$HOME/.vim/bundle/Vundle.vim"

#Consulted ChatGPT on how to download from a URL for a refresher. Prompt: "How do I download a file from my repo using bash?"
#Download .vimrc
curl -fsSL "$REPO_URL" -o "$VIMRC_PATH"

#See if Vundle is already present
if [ ! -d "$VUNDLE_PATH" ]; then
	echo "Installing Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git
else
	echo "Vundle already installed."
fi

#Plugins, copied from assignment instructions by Professor Duncan
vim +PluginInstall +qall

echo "Setup complete."
