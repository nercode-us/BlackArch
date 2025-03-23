#!/bin/bash
xcalib -d :0 -s 0 -c -a

#  -contrast <percent>   -co -min 50 -max 100 (1.0-100.0)
# min - darker
# max - default value
# double this command will lower contrast by (100 - current value)
xcalib -d :0 -s 0 -co 99.0 -a

# -brightness <percent>  -b -min 0.0 max 50.0 (0.0-99.0)
# min - default value
# max - lighter
# more means screen is lighter, 0.0 is default value
xcalib -d :0 -s 0 -b 0.0 -a

# -gammacor <gamma>  -gc -min 0.5 max 5.0
xcalib -d :0 -s 0 -gc 1.4 -a

DRI_PRIME=1 glxinfo > /dev/null 2>&1
