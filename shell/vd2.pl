#!/usr/bin/perl

$path = "/media/055C-2060/VIDEO/C1/";
$type = "flv";

@flst = `ls $path`;

foreach $i (@flst){
#	chop($i);
#	print "$i\n";
}

$name = "Glade Usage.mp4";
#print "$path$name\n";
$name =~ s/ /\\ /g;
@info = `mediainfo -f $path$name`;

foreach $i (@info){
	print "$i";
}
