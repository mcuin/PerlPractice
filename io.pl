#!/bin/user/perl

open(DATA, "<file.txt") or die "Could not open file.txt, $!.";

while(<DATA>){
	print "$_";
}

print "What is your name?\n";
$name = <STDIN>
print "Hello $name!\n";

open(DATA, "<import.txt") or die "Could not open file.";
@lines = <DATA>
close(DATA);

open(DATA1, "<file1.txt") or die "Could not open file 1.";
open(DATA2, ">file2.txt") or die "Could not open file 2.";

while(<DATA1>) {
	print DATA2 $_;
}

close(DATA1);
close(DATA2);

my $file = "/usr/Documents/Perl/file1.txt"
my (@description, $size);
if (-e $file) {
	push @description, 'binary' if (-B _);
	push @description, 'a socket' if (-S _);
	push @description, 'a text file' if (-T _);
	push @description, 'a block special file' if (-b _);
	push @description, 'a character special file' if (-c _);
	push @description, 'a directory' if (-d _);
	push @description, 'exectuable' if (-x _);
	push @description, (($size = -s _)) ? "$size bytes" : 'empty';
	print "$file is ", join(', ', @description), "\n";
}
