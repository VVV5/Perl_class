#!/usr/bin/perl -w
use hml;
my $num='';
do{
print"\n********sign up********\n";
print"1.entering\n";
print"exit:enter space!\n";
$num=<STDIN>;
chomp $num;
if($num eq "1"){
  print"\n filling in your personal information:\n";
  print "Please enter your name:\n";
  $uname = <STDIN>;
  chomp $uname;
  hml($uname);
}
elsif ($num=~/^\s*$/) {
  print"\n you already exit program\n";
}
else {
  print "Error! Please enter a number between 1 and 2";
}
}until ($num =~ /^\s*$/)


