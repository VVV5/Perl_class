#!usr/bin/env perl
use strict;
use warnings;
use BeginPerlBioinfo;
my @file_data = ();
my $dna       = '';
@file_data = get_file_data("sample.dna");
$dna = extract_sequence_from_fasta_data(@file_data);
print_sequence( $dna, 25 );
exit;
