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
1;
