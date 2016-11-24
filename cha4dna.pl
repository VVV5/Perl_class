#!/usr/bin/env perl
use warnings;
use strict;
my $dna1 = 'actggtcagtgcat';
my $dna2 = 'agtcgtagtcgta';
print "Here are the original two DNA fragments:\n\n";
print $dna1, "\n";
print $dna2, "\n\n";
my $dna3 = "$dna1$dna2";
print "Here is the concatenation of the first two fragments (version 1):\n\n";
print "$dna3\n\n";
exit;
