#!/bin/sh

# Custom directory, so it should not exist.
ln -s "$PWD/.tmux-conf-scripts/" ~/.tmux-conf-scripts

echo "Moving ~/.bash_profile to ~/.bash_profile.bak"
mv ~/.bash_profile ~/.bash_profile.bak
echo "Symlinking ~/.bash_profile to $PWD/.bash_profile"
ln -s "$PWD/.bash_profile" ~/.bash_profile
echo -e"Woot!\n\n"

echo "Moving ~/.vimrc to ~/.vimrc.bak"
mv ~/.vimrc ~/.vimrc.bak
echo "Symlinking ~/.vimrc to $PWD/.vimrc"
ln -s "$PWD/.vimrc" ~/.vimrc
echo -e"Woot!\n\n"

echo "Moving ~/.vim to ~/.vim.bak"
mv ~/.vim ~/.vim.bak
echo "Symlinking ~/.vim to $PWD/.vim"
ln -s "$PWD/.vim" ~/.vim
echo -e"Woot!\n\n"

echo "Moving ~/.tmux.conf to ~/.tmux.conf.bak"
mv ~/.tmux.conf ~/.tmux.conf.bak
echo "Symlinking ~/.tmux.conf to $PWD/.tmux.conf"
ln -s "$PWD/.tmux.conf" ~/.tmux.conf
echo -e"Woot!\n\n"


