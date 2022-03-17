#!/bin/sh

topdir=$(pwd)
logdir="${topdir}/logs"
mkdir -p ${logdir}

echo WW3 checkout ...
if [[ ! -d WW3.fd ]] ; then
    git clone https://github.com/noaa-emc/ww3 WW3.fd >> ${logdir}/checkout-ww3.log 2>&1
    cd WW3.fd
    git checkout 3f2730426fc28a5246ae48280cfe98a25873180c 
    cd ${topdir}
else
    echo 'Skip.  Directory WW3.fd already exists.'
fi


exit 0
