#!/urs/bin/perl

%data = ('JohnPaul' => 45, 'Lisa' => 30, 'Kumar' => 40);
print "$data{'JohnPaul'}\n";
print "$data{'Lisa'}\n";
print "$data{'Kumar'}\n";

@array = @data{JohnPaul, Lisa};
print "Array: @array\n";

@names = keys %data;

print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";

@ages = values %data;
print "$ages[0]\n";
print "$ages[1]\n";
print "$ages[2]\n";

if( exists($data{'Lisa'} ) ){
	print "Lisa is $data{'Lisa'} years old\n";
} else {
	print "I don't know age of Lisa\n";
}

@keys = keys %data;
$size = @keys;
print "1 - Hash size is: $size\n";

@values = values %data;
$size2 = @values;
print "2 - Hash size is: $size2\n";

$data{'Ali'} = 55;
@keys = keys %data;
$size = @keys;
print "3 - Hash size is: $size\n";

delete $data{'Ali'};
$size = keys %data;
print "4 - Hash size is: $size\n";
