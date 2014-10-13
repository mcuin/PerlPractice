#!/usr/bin/perl

$dir = "/tmp/*";
my @files = glob($dir);

foreach (@files) {
	print $_ . "\n";
}

$dir = "/tmp/*.c";
my @files = glob($dir);

foreach (@files) {
	print $_ . "\n";
}

$dir = "/tmp/.*";
my @files = glob($dir);

foreach (@files) {
	print $_ . "\n";
}

$dir = "/tmp/* home/*";
@files = glob($dir);

foreach (@files) {
	print $_ . "\n";
}

opendir(DIR, '.') or die "Could not open directory, $!.";
while ($file = readdir DIR) {
	print "$file\n";
}

closedir DIR;

$dir = "/tmp/perl/";

mkdir($dir) or die "Couldn't make directory, $!";
print "Directory created successfully.\n";

rmdir($dir) or die "Couldn't remove directoy, $!";
print "Directory removed successfully.\n";

$dir = "/home";

chdir($dir) or die "Could not change directories, $!.";
print "Your new location is $dir\n";

