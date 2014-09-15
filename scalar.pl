#!/usr/bin/perl

$int = 200;
$neg = -300;
$float = 200.340;
$bigfloat = -1.2E-23;

$octal = 0377;

$hexa = 0xff;

print "integer = $integer\n";
print "negative = $negative\n";
print "float = $float\n";
print "bigfloat = $bigfloat\n";
print "octal = $octla\n";
print "hexa = $hexa\n";

$var = "This is string scalar!";
$quote = 'I m inside single quote - $var';
$double = "This is inside single quote - $var";
$escape = "This example of escape -\tHello World!";

print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

$str = "hello" . "world";
$num = 5 + 10;
$mult = 5 * 4;
$mix = $str . $num;

print "str = $str\n";
print "num = $num\n";
print "mult = $mult\n";
print "mix = $mix\n";

$multstring = 'This is
a multiple 
line string.';

print "$multstring\n";

print <<EOF;
This is 
a multiline
string.
EOF

$smile = v9786;
$foo = v102.111.111;
$martin = v77.97.114.116.105.110;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

print "File name: ". __FILE__. "\n";
print "Line number: ".__LINE__."\n";
print "Package ".__PACKAGE__."\n";
print "__FILE____LINE____PACKAGE__\n";
