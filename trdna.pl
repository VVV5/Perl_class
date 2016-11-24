#!/usr/bin/env perl
use warnings;
use strict;
my $dna = 'acgtgtgctcagtca';
print "Here is the starting DNA:\n\n";
print "$dna\n\n";
my $rna = $dna;
$rna =~ s/t/u/g;
print "Here is the result of transcribing the DNA to RNA:\n\n";
print "$rna\n";
exit;
