#!/bin/bash

a=$(( 12 + 5 ))

echo $a

echo $(( 12 + 5 ))

echo $(( 100 - 1 ))

echo $(( 3 * 20 ))

echo $(( 100 / 10 ))

x=10;y=33
z=$(( $x * $y ))
echo $z

echo $(( 99 % 10 ))


echo "##########################"
echo "expr command"
echo "##########################"

expr 2 + 2

expr 6 \* 6

expr 6 / 3

expr 1000 - 999

expr 99 % 10

echo "##########################"
echo "let command"
echo "##########################"

let a=2+2
echo $a

b=$((4+$(($a-1))))
echo $b

let c=($b**3)/2
echo $c

let c++
echo $c

let c--
echo $c
