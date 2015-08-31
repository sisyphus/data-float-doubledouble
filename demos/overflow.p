###########################################################
# Been trying to find the lowest positive integer value(s)
# for doubledouble $x such that:
#
# 1) $x == $x - 1
# 2) $x == $x + 1
#
# So far, the lowest +ve integer value I've got that
# satisfies 1) is greater than the lowest +ve integer value
# for 2) by 2**54.
# Can these values be improved upon (ie lowered) ?
###########################################################

use strict;
use warnings;
use Data::Float::DoubleDouble qw(:all);

# Set $x such that $x == $x - 1
my $x = (2**107) - (2**106) + ((2**55)+1) - ((2**53)+1) -1;

print "OK 1\n" if $x == $x - 1;
print "OK 2\n" if $x == $x + 1;

my @bin = float_B($x);
print "# $bin[1]" ."E" . "$bin[2]\n";
my @d1 = get_doubles($x);
print "@d1\n";
for(@d1){print D2H($_), " "}
print "\n";
print $x, "\n";

# Now set $x such that $x == $x + 1
$x -= 2**54;

print "OK 1\n" if $x == $x - 1;
print "OK 2\n" if $x == $x + 1;

@bin = float_B($x);
print "# $bin[1]" ."E" . "$bin[2]\n";
@d1 = get_doubles($x);
print "@d1\n";
for(@d1){print D2H($_), " "}
print "\n";
print $x, "\n";

