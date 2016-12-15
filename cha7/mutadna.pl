#!/usr/bin/env perl
use warnings;
use strict;
my $dna = 'AAAAAAAAAAAAAAAA';
srand(time|$$);
for (my $i=0 ; $i < 20 ; ++$i ) {
  print randomposition($dna)," ";
}
print "\n";
exit;
sub randomposition {
  my($string) = @_;
  return int rand length $string;
}
