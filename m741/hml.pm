sub hml{
my $name = @_;
open (NEME,">$name");
close (NAME);
open my $SHUJU,'>>',$name or die "$0 : failed to open input file '%hash' : $!\n";
%hash = (
'age' => ' ',
'sex' => ' ',
'height' => ' ',
'weight' => ' ',
'taste' => ' ',
'pulse' => ' ',
'highblood' => ' ',
'lowblood' => ' ',
'sleephours' => ' ',
'username' => ' ',
'password' => ' ',
);


print "tell me your password:\n";
$password = <STDIN>;
chomp $password;
$hash{'password'} = $password;

print "tell me your sex,boy or girl:\n";
$sex = <STDIN>;
chomp $sex;
$hash{'sex'} = $sex;

print "your age:\n";
$age = <STDIN>;
chomp $age;
$hash{'age'}= $age; 

print "your height:\n";
$height = <STDIN>;
chomp $height;
$hash{'height'}= $height;

print "your weight:\n";
$weight = <STDIN>;
chomp $weight;
$hash{'weight'}= $weight;

print "your taste:\n";
$taste = <STDIN>;
chomp $taste;
$hash{'taste'}= $taste;


print "your pulse:\n";
$pulse = <STDIN>;
chomp $pulse;
$hash{'pulse'}= $pulse;

print "your high blood:\n";
$highblood = <STDIN>;
chomp $highblood;
$hash{'highblood'}= $highblood;

print "your low blood:\n";
$lowblood = <STDIN>;
chomp $lowblood;
$hash{'lowblood'}= $lowblood;

print "your sleep hours:\n";
$sleephours = <STDIN>;
chomp $sleephours;
$hash{'sleephours'}= $sleephours;

@keys = keys %hash;
@values = values %hash;
$count = keys %hash;
$count = values %hash;
while (($key,$values) = each %hash){
print "$key => $values\n";
}
select $SHUJU;
while (($key,$values) = each %hash){
print "$key => $values\n";
}
close $SHUJU or warn  "$0 : failed to close input file '%hash' : $!\n";
}
1;
