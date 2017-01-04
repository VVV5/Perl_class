#!usr/bin/env perl
use warnings;

#use strict;

my $uname = '';
print "\n filling in your personal information:\n";
print "Please enter your name:\n";
$uname = <STDIN>;
chomp $uname;
open my $SHUJU, '>>', $uname
  or die "$0 : failed to open input file '%hash' : $!\n";
my %hash = (
    'age'        => ' ',
    'sex'        => ' ',
    'height'     => ' ',
    'weight'     => ' ',
    'taste'      => ' ',
    'pulse'      => ' ',
    'highblood'  => ' ',
    'lowblood'   => ' ',
    'sleephours' => ' ',
    'password'   => ' ',
);

$hash{'sex'}        = get_sex();
$hash{'age'}        = get_age();
$hash{'height'}     = get_height();
$hash{'weight'}     = get_weight();
$hash{'taste'}      = get_taste();
$hash{'pulse'}      = get_pulse();
$hash{'highblood'}  = get_highblood();
$hash{'lowblood'}   = get_lowblood();
$hash{'sleephours'} = get_sleephours();
$hash{'password'}   = get_password();

my @keys   = keys %hash;
my @values = values %hash;
my $count  = keys %hash;
$count = values %hash;
while ( ( my $key, my $values ) = each %hash ) {
    print "$key => $values\n";
}
select $SHUJU;
while ( ( my $key, my $values ) = each %hash ) {
    print "$key $values\n";
}
close $SHUJU or warn "$0 : failed to close input file '%hash' : $!\n";

#select STDOUT;
print "\n";
print "*" x 60;
print "\nusername :\n";
exit;

sub get_password {
    print "tell me your password:\n";
    my $password = <STDIN>;
    chomp $password;
    return $password;
}

sub get_sex {
    print "tell me your sex,boy or girl:\n";
    my $sex = <STDIN>;
    chomp $sex;
    return $sex;
}

sub get_age {
    print "your age:\n";
    my $age = <STDIN>;
    chomp $age;
    return $age;
}

sub get_height {
    print "your height(m):\n";
    my $height = <STDIN>;
    chomp $height;
    return $height;
}

sub get_weight {
    print "your weight(kg):\n";
    my $weight = <STDIN>;
    chomp $weight;
    return $weight;
}

sub get_taste {
    print "your taste:la or acid or sweet or ku or salt\n";
    my $taste = <STDIN>;
    chomp $taste;
    return $taste;
}

sub get_pulse {
    print "your pulse:\n";
    my $pulse = <STDIN>;
    chomp $pulse;
    return $pulse;
}

sub get_highblood {
    print "your high blood:\n";
    my $highblood = <STDIN>;
    chomp $highblood;
    return $highblood;
}

sub get_lowblood {
    print "your low blood:\n";
    my $lowblood = <STDIN>;
    chomp $lowblood;
    return $lowblood;
}

sub get_sleephours {
    print "your sleep hours:\n";
    my $sleephours = <STDIN>;
    chomp $sleephours;
    return $sleephours;
}

