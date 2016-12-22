#!/usr/bin/env perl
use warnings;
use strict;
my $dna = 'TTTTTTTTTTTTTTTTTTTTTTTTTT';
my $i;
my $mutant;
srand( time | $$ );
$mutant = mutate_better($dna);
print "\nMutate DNA\n\n";
print "\nHere is the original DNA:\n\n";
print "$dna\n";
print "\nHere is the mutant DNA:\n\n";
print "$mutant\n";
print "\nHere are 10 more successive mutations:\n\n";
for ( $i = 0 ; $i <10 ; ++$i ) {
     $mutant = mutate_better($mutant);
     print "$mutant\n";
}
exit;
sub mutate_better {
    my ($dna) = @_;
    my ($position) = randomposition($dna);
    my ($newbase);
    do {
       $newbase = randomnucleotide();
    }until ( $newbase ne substr($dna, $position,1));
    substr($dna,$position,1,$newbase);
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

