#!/bin/user/perl

@months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
@days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
print "$mday $months[mon] $days[wday]\n"; 

$datestring = localtime();
print "Local date and time: $datestring\n";

$datestring2 = gmtime();
print "GMT date and time: $datestring2\n";

printf("Time format - HH:MM:SS\n");
printf("%02d:%02d:%02d", $hour, $min, $sec);
print("\n");

print "Current date and time: $datestring\n";

$epoc = time();
$epoc = $epoc - 12 * 60 * 60;
$datestring = localtime($epoc);
print "Yesterday's date and time $datestring\n";
