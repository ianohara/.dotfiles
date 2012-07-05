# List my home directory when I start up the terminal
ls

# Configure my prompt style:
#   Just the most recent history number followed
#   by the (possibly shortened) current path
export PROMPT_COMMAND='HIST=`history | awk "{print \\\$1}" | tail -1`; DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=${DIR:0:12}...${DIR:${#DIR}-15}; else CurDir=$DIR; fi; ~/.tmux-conf-scripts/git-cur-branch-tmp.sh'
PS1="[\$HIST@\$CurDir]\$ "

# Setting PATH for Python 2.7
# and insuring that /usr/local/bin is ahead of /usr/bin for homebrew
# The orginal version is saved in .profile.pysave
PATH="/usr/local/Cellar/ccache/3.1.6/libexec/:/usr/local/lib/wxPython/bin/:${PATH}" # /usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
#PYTHONPATH="/Library/Python/2.6/site-packages"
export CPLUS_INCLUDE_PATH="/usr/local/include:$CPLUS_INCLUDE_PATH"
source /opt/ros/fuerte/setup.bash
export ROS_OS_OVERRIDE=osx:homebrew
export ROS_PACKAGE_PATH="/Users/ianohara/ros-pkgs:/Users/ianohara/modlab:${ROS_PACKAGE_PATH}"

PYTHONPATH="/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:/usr/local/lib/python2.7/site-packages:/usr/local/lib/python:/Users/ianohara/Documents/git_projects/python/:/Users/ianohara/Documents/personal_projects/Python/:${PYTHONPATH}"
export PYTHONPATH

# Vim as the default editor
export EDITOR='vim'

alias tmux="TERM=screen-256color-bce tmux"

# Safety!
alias rm="rm -i"

#
export CLICOLOR=cons25
#export TERM="xterm-color"

# Aliases #
alias ls="ls -G"
alias lsa="ls -a"
alias lsd="ls; echo 'Lucy'"
alias stcd="cd ~/Documents/School/Spring 2011/StorqueUAV"
alias home="cd ~"
alias school="cd ~/Documents/School/2011_fall"
alias modlab="cd ~/Documents/School/Modlab"
alias dynock="cd ~/Documents/School/2011_fall/ind_study_yim/ckbot_dynamics"

function cs {
 cd $1
 pwd
}

GREP_OPTIONS="--color=auto ${GREP_OPTIONS}"
export GREP_OPTIONS

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

