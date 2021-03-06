#!/usr/bin/perl

@days = qw/Mon Tues Wed Thurs Fri Sat Sun/;

print "$days[-1]\n";
print "$days[-7]\n";

@var10 = (0..10);
@var20 = (10..20);
@alpha = (a..z);

print "@var10\n";
print "@var20\n";
print "@alpha\n";

print "Size: ", scalar @alpha,"\n";

@coins = ("Quarter", "Dime", "Nickle");
print "@coins\n";
push(@coins, "Penny");
print "@coins\n";
unshift(@coins, "Dollar");
print "@coins\n";
pop(@coins);
print "@coins\n";
shift(@coins);
print "@coins\n";

@weekdays = @days[3, 4, 5];
print "@weekdays\n";

@nums = (0..20);
print "Before - @nums\n";

splice(@nums, 5, 5, 21..25);
print "After - @nums\n"; 

$string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$names = "Larry,David,Roger,Ken,Micheal,Tom";

@stringSplit = split('-', $string);
@namesSplit = split(',', $names);

print "$stringSplit[3]\n";
print "$namesSplit[4]\n";

$stringJoin = join('-', @stringSplit);
$namesJoin = join(',', @namesSplit);

print "$stringJoin\n";
print "$namesJoin\n"; 

@foods = qw(pizza steak chicken burgers);
print "Foods: @foods\n";

$[ = 1;

print "Foods at index 1: @foods[1]\n";
print "Foods at index 2: @foods[2]\n";

@foods = sort(@foods);
print "After sort - @foods\n";

@odds = (1, 3, 5);
@evens = (2, 4, 6);

@numbers = (@odds, @evens);
print "numbers = @numbers\n";
