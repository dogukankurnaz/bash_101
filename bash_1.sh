#!/bin/bash

#Hello World
#----------------------------
echo "merhaba dogukaN"
#Değişken alma (syntax ingilizce olmak zorunda)
#----------------------------
sistem="Parrot OS"
echo $sistem
rakamlar="123456789"
echo $rakamlar
yeni_deger="yeni değer"
echo $yeni_deger
#Sayısal değer olduğunu belirtmek 
declare -i rakam="10"
echo $rakam

#Dizi tanımlama
declare -a dizi=(a b c d e f)
declare -p dizi

dizi2=(x y z e f)
declare -p dizi2

alisveris_listesi=(su süt elma cilek ekmek)
echo ${alisveris_listesi[@]}  #tüm listeyi bastırmak için.

readonly selam="test" #salt okunur yapımı.
selam="merhaba"

#değişken sıfırlama

degisken="değer"
declare -p degisken
unset degisken
declare -p degisken


#değerin bir kısmını bastırmak
deneme="123456789"
echo ${deneme::3}
echo ${deneme:2}
echo ${deneme:2:4}
