#!usr/bin/env perl
use warnings;
use strict;
my $choice = '';
my $choice1 = '';
print "\n";
print "*" x 60;
print "\n\n";
print "\nHello!\^O\^\nI\'m Baymin\, your personal health monitor companion\.\n\n";
print "\n";
print "*" x 60;
print "\n\n";
print "What help would you need?\n1\.Sign up for Baymin\.\n2\.Sign in to Baymin\.\n3\.Exit\.\n\n";
print "*" x 60;
print "\n";
print "Please enter your option: ";
$choice = <STDIN>;
chomp $choice;
if ( $choice eq "1" ) {
my $num = '';
print "\n************************sign up************************\n";
print "1\.entering\n";
print "2\.press enter key to exit!\n";
print "\n*******************************************************\n";
my $num='';
$num=<STDIN>;
chomp $num;
if($num eq "1"){
  my $uname = '';
  print"\n filling in your personal information:\n";
  print "Please enter your name:\n";
  $uname = <STDIN>;
  chomp $uname;
  open my $SHUJU,'>>',$uname or die "$0 : failed to open input file '%hash' : $!\n";
  my %hash = (
  'age' => ' ',
  'sex' => ' ',
  'height' => ' ',
  'weight' => ' ',
  'taste' => ' ',
  'pulse' => ' ',
  'highblood' => ' ',
  'lowblood' => ' ',
  'sleephours' => ' ',
  'password' => ' ',
  );


  print "tell me your password:\n";
  my $password = <STDIN>;
  chomp $password;
  $hash{'password'} = $password;

  print "tell me your sex,boy or girl:\n";
  my $sex = <STDIN>;
  chomp $sex;
  $hash{'sex'} = $sex;

  print "your age:\n";
  my $age = <STDIN>;
  chomp $age;
  $hash{'age'}= $age; 

  print "your height:\n";
  my $height = <STDIN>;
  chomp $height;
  
  print "your weight:\n";
  my $weight = <STDIN>;
  chomp $weight;
  $hash{'weight'}= $weight;

  print "your taste:\n";
  my $taste = <STDIN>;
  chomp $taste;
  $hash{'taste'}= $taste;

  print "your pulse:\n";
  my $pulse = <STDIN>;
  chomp $pulse;
  $hash{'pulse'}= $pulse;

  print "your high blood:\n";
  my $highblood = <STDIN>;
  chomp $highblood;
  $hash{'highblood'}= $highblood;

  print "your low blood:\n";
  my $lowblood = <STDIN>;
  chomp $lowblood;
  $hash{'lowblood'}= $lowblood;

  print "your sleep hours:\n";
  my $sleephours = <STDIN>;
  chomp $sleephours;
  $hash{'sleephours'}= $sleephours;

  my @keys = keys %hash;
  my @values = values %hash;
  my $count = keys %hash;
  $count = values %hash;
  while ((my $key,my $values) = each %hash){
  print "$key => $values\n";
  }
  select $SHUJU;
  while ((my $key,my $values) = each %hash){
  print "$key => $values\n";
  }
  close $SHUJU or warn  "$0 : failed to close input file '%hash' : $!\n";
  }  
elsif ($num=~/^\s*$/) {
  print"\n you already exit program\n";
}
else {
  print "Error! Please enter a number between 1 and 2";
}
}
elsif ( $choice eq "2" ) {
}
elsif ( $choice eq "3" ) {
exit;
 }
else {
    print "*" x 60;
    print "\n";
    print "!!Without this option~";
    print "\n";
    print "*" x 60;
    print "\n";
    print "\nWhat help would you need?\n1\.Sign up for Baymin\.\n2\.Sign in to Baymin\.\n3\.Exit\.\n\n";
    print "*" x 60;
    print "\n";
    print "Try again: ";
    $choice1 = <STDIN>;
    chomp $choice1;
    if ( $choice eq "1" ) {
     }
    elsif ( $choice eq "2" ) {
     }    
    elsif ( $choice eq "3" ) {
    exit;
     }
    else {
    print "*" x 60;
    print "\n";
    print "ERROR!!Baymin automatically exits!!";
    print "\n";
    print "*" x 60;
    print "\n";
    exit;
    }
}  
exit;
