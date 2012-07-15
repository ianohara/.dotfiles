if [ -n `uname | grep Darwin` ]; then
    echo Found Darwin >> /tmp/debug
    TOP_OPT="-l 1"
elif [ -n `uname | grep Linux` ]; then
    echo Found Linux >> /tmp/debug
    TOP_OPT="-n 1"
fi


top $TOP_OPT | grep PhysMem: | awk '{ print $10  " free / " $8 " used" }'
