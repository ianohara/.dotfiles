#!/bin/sh

# Custom directory, so it should not exist.
ln -s "$PWD/.tmux-conf-scripts/" ~/.tmux-conf-scripts

echo "Moving ~/.bash_profile to ~/.bash_profile.bak"
mv ~/.bash_profile ~/.bash_profile.bak
echo "Symlinking ~/.bash_profile to $PWD/.bash_profile"
ln -s "$PWD/.bash_profile" ~/.bash_profile
echo  "Woot!\n\n"

echo "Moving ~/.vimrc to ~/.vimrc.bak"
mv ~/.vimrc ~/.vimrc.bak
echo "Symlinking ~/.vimrc to $PWD/.vimrc"
ln -s "$PWD/.vimrc" ~/.vimrc
echo  "Woot!\n\n"

echo "Moving ~/.vim to ~/.vim.bak"
mv ~/.vim ~/.vim.bak
echo "Symlinking ~/.vim to $PWD/.vim"
ln -s "$PWD/.vim" ~/.vim
echo  "Woot!\n\n"

echo "Moving ~/.tmux.conf to ~/.tmux.conf.bak"
mv ~/.tmux.conf ~/.tmux.conf.bak
echo "Symlinking ~/.tmux.conf to $PWD/.tmux.conf"
ln -s "$PWD/.tmux.conf" ~/.tmux.conf

echo  "Cloning the solarized color scheme from altercation's account on github..."
SAVE_DIR=$PWD
cd ~
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim-colors-solarized
cd $SAVE_DIR
PWD=$SAVE_DIR # Do I need to do this, or will PWD change even when in a script?

if [ ! -e "$PWD/.vim/bundle" ]; then
    mkdir "$PWD/.vim/bundle"
fi

echo  "Now linking ~/.vim-colors-solarized to $PWD/.vim/bundle/vim-colors-solarized" 
ln -s ~/.vim-colors-solarized "$PWD/.vim/bundle/vim-colors-solarized"

echo  "Woot!\n\n"
