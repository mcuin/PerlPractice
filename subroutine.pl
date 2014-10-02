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
