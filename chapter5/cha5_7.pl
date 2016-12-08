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
unless ( open ( DNAFILE, $dna_filename ) ) {
       print "Cannot open file \"$dna_filename\"\n\n";
       exit;
}
my @DNA = <DNAFILE>;
close DNAFILE;
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
unless ( open ( COUNTBASE, ">$outputfile" ) ) {
       print "Cannot open filr \"$outputfile\" to write to!!\n\n";
       exit;
}
print COUNTBASE "A=$a C=$c G=$g T=$t errors=$e\n";
close (COUNTBASE);
exit;
