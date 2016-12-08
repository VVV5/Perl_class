#!/usr/bin/env perl
use warnings;
use strict;
print "PLease type the filename of the DNA sequence data : ";
my $dna_filename = <STDIN>;
chomp $dna_filename;
unless ( -e $dna_filename ) {
       print "File \"$dna_filename\" doesn\'t seem to exist !!\n";
       exit;
}
open my $DNAFILE, '<', $dna_filename or die "$0 : failed to open input file '$dna_filename' : $!\n";
my @DNA = <$DNAFILE>;
close $DNAFILE or warn "$0 : failed to close input file '$dna_filename' : $!\n";
my $DNA = join( '', @DNA );
$DNA =~ s/\s//g;
my $a = 0;
my $c = 0;
my $g = 0;
my $t = 0;
my $e = 0;
while ( $DNA =~ /a/ig )                 { $a++ }
while ( $DNA =~ /c/ig )                 { $c++ }
while ( $DNA =~ /g/ig )                 { $g++ }
while ( $DNA =~ /t/ig )                 { $t++ }
while ( $DNA =~ /[^acgt]/ig )           { $e++ }
print "A=$a C=$c G=$g T=$t errors=$e\n";
my $outputfile = "countbase";
open my $COUNTBASE, '<', $outputfile or die "$0 : failed to open input file '$outputfile' : $!\n";
print $COUNTBASE "A=$a C=$c G=$g T=$t errors=$e\n";
close $COUNTBASE or warn "$0 : failed to close outputfile '$outputfile' : $!\n";;
exit;
