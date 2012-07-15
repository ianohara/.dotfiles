#!/bin/sh

echo "What directory would you like to backup your current .dotfiles to (empty for no backup)?"
read BACKDIR

BACKDIR=`echo $BACKDIR | sed 's!/$//'`

if [ ( -n "$BACKDIR" ) && ( ! -d "$BACKDIR" ) ]; 
    echo "The Backup directory specified ($BACKDIR) does not exist."
    exit 1
fi

# Make $1 a symlink pointing to $2 and backup $1 if the user
# has already asked us to.
linkit() {
    local DATE=`date +%Y-%m-%d`
    if [ -z "$1" ]; then
        echo "You must supply a link name to create."
        return 0
    fi
    if [ -z "$2" ]; then
        echo "You must file the source to which the link will point"
        return 0
    fi

    if [ ( -e "$1" ) && ( -n "$BACKDIR" ) ]; then
        echo "Moving $1 to $BACKDIR/$1.$DATE.bak"
        mv "$1" "$BACKDIR/$1.$DATE.bak"
    elif [ ( -e "$1" ) && ( -z "$BACKDIR" ) ]; then
        echo "Deleting old $1 in preparation for linking."
        rm $1
    fi

    if [ ! -e "$2" ]; then
        echo "The source to link ($2) to does not exist!"
        return 0
    fi
    echo "Making $1 point to $2"
    ln -s "$2" "$1"
}

linkit "~/.tmux-conf-scripts" "$PWD/.tmux-conf-scripts/"
linkit "~/.bash_profile" "$PWD/.bash_profile"
linkit "~/.vimrc" "$PWD/.vimrc"
linkit "~/.vim" "$PWD/.vim/"
linkit "~/.tmux.conf" "$PWD/.tmux.conf"

echo  "Cloning the solarized color scheme from altercation's account on github..."
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim-colors-solarized
<<<<<<< HEAD
=======
cd $SAVE_DIR
PWD=$SAVE_DIR # Do I need to do this, or will PWD change even when in a script?

if [ ! -e "$PWD/.vim/bundle" ]; then
    mkdir "$PWD/.vim/bundle"
fi

echo  "Now linking ~/.vim-colors-solarized to $PWD/.vim/bundle/vim-colors-solarized" 
ln -s ~/.vim-colors-solarized "$PWD/.vim/bundle/vim-colors-solarized"
>>>>>>> 22dcda2f2ee46665a41a507a5be06f58e6ee31bd

if [ ! -e "$DOTBASE/.vim/bundle/" ]; then
    mkdir "$DOTBASE/.vim/bundle"
fi
linkit "$DOTBASE/.vim/bundle/vim-colors-solarized/" "~/.vim-colors-solarized"

