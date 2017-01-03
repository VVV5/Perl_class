#!/usr/bin/env perl 
use warnings;
use strict;
my $num='';
print"\n********sign up********\n";
print"1.entering\n";
print"exit:enter space!\n";
$num=<STDIN>;
chomp $num;
if($num eq "1"){
  my $uname = '';
  print"\n filling in your personal information:\n";
  print "Please enter your name:\n";
  $uname = <STDIN>;
  chomp $uname;
  #open (NEME,">$uname");
 # close (NAME);
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
  $hash{'height'}= $height;

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
