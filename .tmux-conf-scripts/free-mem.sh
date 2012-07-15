if [ `uname` == "Darwin" ]; then
    TOP_OPT="-l 1"
elif [ `uname` == "Linux" ]; then
    TOP_OPT="-n 1"
fi


top $TOP_OPT | grep PhysMem: | awk '{ print $10  " free / " $8 " used" }'
