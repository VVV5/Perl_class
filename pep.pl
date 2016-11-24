#!/usr/bin/env perl
use warnings;
use strict;
my $proteinfilename = 'NM_02196fragment.pep';
open( PROTEINFILE, $proteinfilename );
my @protein = <PROTEINFILE>;
print @protein;
close PROTEINFILE;
exit;
