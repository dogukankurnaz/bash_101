#!/bin/bash

control=0

while [ $control -lt 3 ];
do
    let control++
    echo $control
done