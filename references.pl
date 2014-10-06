#!/bin/user/perl

$var = 10;

$r = \$var;

print "Value of $var is: ", $$r, "\n";
print "Reference type in $r is: ", ref($r), "\n";

@var = (1, 2, 3);

$r = \@var;

print "Value of @var is: ", @$r, "\n";
print "Reference type in $r is: ", ref($r), "\n";

%var = ('key1' => 10, 'key2' => 20);

$r = \%var;

print "Value of %var is: ", %$r, "\n";
print "Referecne type in $r is: ", ref($r), "\n";

my $foo = 100;
$foo = \$foo;

print "Value of foo is: ", $$foo, "\n";

sub PrintHash{
	my (%hash) = @_;
	
	foreach $item (%hash) {
		print "Item: $item\n";
	}
}

%hash = ('name' => 'Tom', 'age' => 19);

$cref = \&PrintHash;

&$cref(%hash);
