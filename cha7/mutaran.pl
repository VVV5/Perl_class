#!/usr/bin/env perl
use warnings;
use strict;
my $dna = 'TTTTTTTTTTTTTTTTTTTTTTTTTT';
my $i;
my $mutant;
srand( time | $$ );
$mutant = mutate($dna);
print "\nMutate DNA\n\n";
print "\nHere is the original DNA:\n\n";
print "$dna\n";
print "\nHere is the mutant DNA:\n\n";
print "$mutant\n";
print "\nHere are 10 more successive mutations:\n\n";
for ( $i = 0 ; $i <10 ; ++$i ) {
     $mutant = mutate($mutant);
     print "$mutant\n";
}
exit;
sub mutate {
    my ($dna) = @_;
    my ($position) = randomposition($dna);
    my ($newbase) = randomnucleotide();
    substr( $dna, $position, 1, $newbase );
    return $dna;
}
sub randomelement {
    my (@array) = @_;
    return $array[ rand @array ];
}
sub randomnucleotide {
    my (@nucleotides) = ( 'A', 'C', 'G', 'T' );
    return randomelement(@nucleotides);
}
sub randomposition {
    my ($string) = @_;
    return int rand length $string;
}

