#!/bin/bash

SRC_DIR=${0%/*}
CONF_DIR=~/.config

mkdir -p $CONF_DIR/{nvim,tmux,bash.terminator}

cp -rfv $SRC_DIR/{nvim,tmux,bash,terminator} $CONF_DIR/

ln -f -s $CONF_DIR/tmux/tmux.conf ~/.tmux.conf

ln -f -s $CONF_DIR/bash/alias.sh ~/.alias.sh
ln -f -s $CONF_DIR/bash/prompt.sh ~/.prompt.sh
ln -f -s $CONF_DIR/terminator/config ~/.config/terminator/config

grep '~/.alias.sh' ~/.bashrc || echo ". ~/.alias.sh" >> ~/.bashrc
grep '~/.alias.sh' ~/.zshrc || echo ". ~/.alias.sh" >> ~/.zshrc
grep '~/.prompt.sh' ~/.zshrc || echo ". ~/.prompt.sh" >> ~/.zshrc
grep '~/.prompt.sh' ~/.bashrc || echo ". ~/.prompt.sh" >> ~/.bashrc

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Nerd-font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Ubuntu Mono for Powerline Nerd Font Complete.otf" 'https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/UbuntuMono/Original/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf'
