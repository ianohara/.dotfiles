# Configure my prompt style:
#   Just the most recent history number followed
#   by the (possibly shortened) current path
# This is jacked from somewhere on the web...do not have the source handy though.  Sorry.
export PROMPT_COMMAND='HIST=`history | awk "{print \\\$1}" | tail -1`; DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=${DIR:0:12}...${DIR:${#DIR}-15}; else CurDir=$DIR; fi; ~/.tmux-conf-scripts/git-cur-branch-tmp.sh'
PS1="[\$HIST@\$CurDir]\$ "

export PATH="/usr/local/Cellar/ccache/3.1.6/libexec/:/usr/local/lib/wxPython/bin/:${PATH}"
export CPLUS_INCLUDE_PATH="/usr/local/include:$CPLUS_INCLUDE_PATH"

# ROS Fuerte setup
if [ -e "/opt/ros/fuerte" ]; then
    source /opt/ros/fuerte/setup.bash
    export ROS_OS_OVERRIDE=osx:homebrew
    export ROS_PACKAGE_PATH="/Users/ianohara/ros-pkgs:/Users/ianohara/modlab:${ROS_PACKAGE_PATH}"
fi

export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:/usr/local/lib/python2.7/site-packages:/usr/local/lib/python:/Users/ianohara/Documents/git_projects/python/:/Users/ianohara/Documents/personal_projects/Python/:/Users/ianohara/modlab/repos/mod-ros-pkg/CKBot/branches/pyckbot/py/:/Users/ianohara/modlab/repos/personal/iano/ckbot/:${PYTHONPATH}"

# Vim as the default editor
export EDITOR='vim'

alias tmux="TERM=screen-256color-bce tmux"
export CLICOLOR=cons25


# Safety!
alias rm="rm -i"

# Shell Aliases #
alias ls="ls -G"
alias lsa="ls -a"
alias home="cd ~"

# Git aliases and settings
alias gits="git status -sb"
git config --global color.ui 1 # Use colors in git output

# Project shortcut aliases
alias school="cd ~/Documents/School/2012_fall"
alias modlab="cd ~/Documents/School/Modlab"
alias dynock="cd ~/Documents/School/2011_fall/ind_study_yim/ckbot_dynamics"
alias dtemp="cd ~/modlab/repos/darpa_temp/software/boat"
alias realtime="cd ~/modlab/repos/personal/iano/realtime_gumstix"

GREP_OPTIONS="--color=auto ${GREP_OPTIONS}"
export GREP_OPTIONS

# These fall in the land of...I'm not sure....(Added by scripts at some point, I think)
test -r /sw/bin/init.sh && . /sw/bin/init.sh

export MKL_NUM_THREADS=1
