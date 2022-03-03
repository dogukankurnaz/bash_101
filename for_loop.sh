#!/bin/bash

for i in 1 2 3; do
    echo $i
done

for i in $(cat /home/user/Desktop/test/words.txt); do
    echo $i
done

if  grep -Fxq "test" words.txt   
then
    echo "aranan deger mevcut"
else
    echo "aranan deger mevcut degil"
fi
