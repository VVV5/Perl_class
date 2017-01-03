#!usr/bin/env perl
use warnings;
use strict;
use hml;
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
do{
select STDOUT;
print "\n************************sign up************************\n";
print "1\.entering\n";
print "2\.exit:enter space!\n";
print "\n*******************************************************\n";
$num = <STDIN>;
chomp $num;
if ( $num eq "1" ) {
  my $uname = '';
  select STDOUT;
  print "\n filling in your personal information:\n";
  print "Please enter your name:\n";
  $uname = <STDIN>;
  chomp $uname;
  hml($uname);
}
elsif ( $num=~/^\s*$/ ) {
  print"\n you already exit program\n";
}
else {
  print "Error! Please enter a number between 1 and 2";
}
}until ( $num =~ /^\s*$/ )
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
