#!/bin/bash

PROGRAM=$1

usage() {
    echo '==========  Invocation Guide  =================='
    echo 'Invocation format: sh toolbox.sh container-runtime'
    echo 'Example: sh toolbox.sh podman'
    echo '===================  End  ======================'
}

if [ $PROGRAM == '-h' ];
then
    usage
    exit 0
fi

echo 'Building net-toolbox container...'
echo '...................................'

$PROGRAM build -t net-toolbox .

echo 'Launching net-toolbox container...'
echo '...................................'

$PROGRAM run --rm -it net-toolbox /bin/bash