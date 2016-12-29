sub codon2aa {
  my($codon) = @_;
  $codon = uc $codon;
  my(%genetic_code) = (
  'TCA' => 'S',
  'TCC' => 'S',
  'TCG' => 'S',
  'TCT' => 'S',
  'TTC' => 'F',
  'TTT' => 'F',
  'TTA' => 'L',
  'TTG' => 'L',
  'TAC' => 'Y',
  'TAT' => 'Y',
  'TAA' => '_',
  'TAG' => '_',
  'TGC' => 'C',
  'TGT' => 'C',
  'TGA' => '_',
  'TGG' => 'W',
  'CTA' => 'L',
  'CTC' => 'L',
  'ATC' => 'I',
  'GTA' => 'V',
  'GGT' => 'G',
  'CGA' => 'R',
  'ACG' => 'T',
  'GGG' => 'G',
  'ACT' => 'T',
  'AGC' => 'S',
  'CGG' => 'R',
);
if(exists $genetic_code{$codon}) {
   return $genetic_code{$codon};
}else{
  print STDERR "Bad codon \"$codon\"!!\n";
  exit;
 }
}
sub get_file_data {
  my($filename) = @_;
  use strict;
  use warnings;
  my @filedata = ();
unless( open(GET_FILE_DATA, $filename) ) {
     print STDERR "Cannot open file \"$filename\"\n\n";
     exit;
}
@filedata = <GET_FILE_DATA>;
close GET_FILE_DATA;
return @filedata;
}

sub extract_sequence_from_fasta_data {
  my (@fasta_file_data) = @_;
  use strict;
  use warnings;
  my $sequence = '';
  foreach my $line (@fasta_file_data) {
  if ($line =~ /^\s*$/) {
  next;
  } elsif($line =~ /^\s*#/) {
  next;
  } elsif($line =~ /^>/) {
  next;
  } else {
  $sequence .= $line;
  }
}
$sequence =~ s/\s//g;
return $sequence;
}
sub print_sequence {
 my($sequence, $length) = @_;
 use strict;
 use warnings;
 for ( my $pos = 0 ; $pos < length($sequence) ; $pos += $length ) {
  print substr($sequence, $pos, $length), "\n";
  }
}
1;
