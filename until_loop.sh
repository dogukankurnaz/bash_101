#!/bin/bash

control=6
until [ $control -lt 3 ];
do
    let control-=1
    echo $control
done