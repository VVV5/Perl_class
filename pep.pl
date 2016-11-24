#!/usr/bin/env perl
use warnings;
use strict;
my $proteinfilename = 'NM_02196fragment.pep';
open( PROTEINFILE, $proteinfilename );
my $protein = <PROTEINFILE>;
close PROTEINFILE;
print "Here is the protein:\n\n";
print $protein;
exit;
