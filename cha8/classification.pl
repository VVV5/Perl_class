#!/usr/bin/env perl
use warnings;
use strict;
my %hashc = (
   dog => 'mammal',
   robin => 'bird',
   asp => 'reptile',
);
my @keys = keys %hashc;
my @values = values %hashc;
while ( (my $key, my $value) = each %hashc ) {
    print "$key => $value\n";
}
$hashc{dog} = "pet";
while ( (my $key, my $value) = each %hashc ) {
    print "$key => $value\n";
}
my $count1 = keys %hashc;
my $count2 = values %hashc;
print "$count1\n$count2\n";
exit;
