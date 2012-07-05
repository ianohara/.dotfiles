top -l 1 | grep PhysMem: | awk '{ print $10  " free / " $8 " used" }'
