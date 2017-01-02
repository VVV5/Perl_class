#!usr/bin/env perl
use warnings;
use strict;
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
my $choice = <STDIN>;
chomp $choice;
if ( $choice == 1 ) {
}
elsif ( $choice == 2 ) {
}
elsif ( $choice == 3 ) {
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
    my $choice1 = <STDIN>;
    chomp $choice1;
    if ( $choice == 1 ) {
     }
    elsif ( $choice == 2 ) {
     }    
    elsif ( $choice ==3 ) {
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
