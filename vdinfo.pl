#!/usr/bin/env perl

$dir_path = "/media/055C-2060/MOVIES/";
$dir_path = "/media/055C-2060/VIDEO/it/";
$extension = ".mp4";

# $pattern_hm = qr/Duration\s+:\s\d+h\s\d+mn/;
# $pattern_ms = qr/Duration\s+:\s\d+mn\s\d+s/;

@lst = `ls $dir_path`;

@file_list = ();

foreach $i (@lst){
	if ($i =~ /.+$extension/){
		@file_list = (@file_list,&fix($i));
		}
	}

foreach $filename (@file_list){
	@mediainfo = `mediainfo $dir_path$filename`;
	print "$filename";
	
	foreach $item (@mediainfo){
		if ($item =~ /Duration\s+:\s\d+mn\s\d+s/){
			print "$item";
			print "ms\n";
			($min,$sec) = $item =~ /\D+(\d+)mn\s(\d+)s/;
			print "min = $min\tsec = $sec\n";
			last;
		}
		
		if ($item =~ /Duration\s+:\s\d+h\s\d+mn/){
			print "$item";
			print "hm\n";
			($hours,$min) = $item =~ /\D+(\d+)h\s(\d+)mn/;
			print "hours = $hours\tmin = $min\n";
			last;
		}
		
		}
	}

sub fix {
	$text = $_[0];
	$text =~ s/\ /\\ /g;
	$text =~ s/\(/\\(/g;	
	$text =~ s/\)/\\)/g;
	return $text;
}











