#!/usr/bin/env bash

function show_logo() {
	echo "####################################"
	echo "##      VD - Video Duration       ##"
	echo "## Calculates duration (in h:m:s) ##"
	echo "####################################"
}

function show_help () {
	echo "this is the help"
}

argc=("$#")
argv=("$@")

if [ $argc == 0 ];
then
	show_help
	exit
fi

#show_logo

path=$1
type=$2

echo "Processing path:"$path
echo "type:"$type

cd $path

#flst=`ls *.flv|sed -e 's/ /_/g'`
#flst=`ls *.flv|tr "[:alnum:]" "[':alnum:']"`
flst=`ls *.flv|sed -e "s/^/\'/g"|sed -e "s/$/\'/g"`

for i in $flst; do
	echo $i
done

#echo $flst




#sedparam="'"'s/\.'$type' /.'$type'\n/'"'"
#echo $sedparam

#flst=`echo $filelist|sed -e 's/\.flv /.flv\n/'|sed -e 's/\ /\\ /g'`

#echo $flst








