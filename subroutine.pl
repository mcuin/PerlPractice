#!/bin/user/perl

sub Hello{
	print "Hello from a routine.\n";
}

Hello();

sub Average{
	$n = (@_);
	$sum = 0;

	foreach $item (@_) {
		$sum += $item;
	}
	$average = $sum / $n;

	print "Average for given numbers is: $average\n";

	return $average;
}

Average(10, 20, 30);

sub PrintList{
	my @list = @_;
	print "Given list is: @list\n";
}

$a = 10;
@b = (1, 2, 3, 4);

PrintList($a, @b);

sub PrintHash{
	my %hash = @_;
	foreach my $key (keys %hash) {
		my $value = $hash{$key};
		print "$key: $value\n";
	}
}

%hash = ('name' => 'Tom', 'age' => 19);

PrintHash(%hash);

$num = Average(40, 50, 60);

print "Average for given numbers id: $num\n";	

$string = "Hello world!";

sub PrintHello{
	my $string;
	local $string2;
	$string = "Hello Perl!";
	$string2 = "Hello Perl!";
	print "Inside the function PrintHello $string\n";
}

sub PrintMe{
	print "Inside the function PrintMe $string2\n";
}

PrintHello();
print "Outside the functions: $string\n";

use feature 'state';

sub PrintCount{
	state $count = 0;

	print "Value of counter is: $count\n";
	$count++;
}

for (1..5){
	PrintCount();
}
