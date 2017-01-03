  print"\n signing in your usename and password:\n";
  print "username :\n";
  my $usename=<STDIN>;
  chomp $usename;
  print "password:\n";
  my $password=<STDIN>;
  chomp $password;
  my (%filename)=(
  "$usename" => "$password",
);
  if ( -e $usename ) {
  open SESAME, '<', $usename or die "$0 : failed to open file '$usename' : $!\n";
  @asd = <SESAME>;
  close SESAME or warn "$0 : failed to close file '$usename' : $!\n";
  print @asd;
}
else {
 print "This username does not exist!\n";
 exit;
}
 


