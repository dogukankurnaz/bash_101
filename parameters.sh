#!/bin/bash

echo $1 $2 $4
echo $#
echo $*


cat <<EOF 
Örnek Kullanim:
┌─[user@parrot]─[~/Desktop/bash_101]
└──╼ $./parameters.sh 1 2 3 4 5
1 2 4
5
1 2 3 4 5
┌─[user@parrot]─[~/Desktop/bash_101]
└──╼ $./parameters.sh bu test işlemidir teşekkürler
bu test teşekkürler
4
bu test işlemidir teşekkürler

EOF