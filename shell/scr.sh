#!/usr/bin/env bash

path='/media/055C-2060/VIDEO/C1/'

#flst=
#flst=`ls *.flv|tr "[:alnum:]" "[':alnum:']"`
#flst=`ls *.flv|sed -e "s/^/\'/g"|sed -e "s/$/\'/g"`

#echo $flst

seqq=`ls $path|sed -e 's/ /\_/g'`

for i in $seqq; do
	echo $i
done





