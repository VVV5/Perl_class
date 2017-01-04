#!usr/bin/env perl
use warnings;
#use strict;
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
if ( $choice eq "1" ) 
{
my $num = '';
print "\n************************sign up************************\n";
print "1\.entering\n";
print "2\.press enter key to exit!\n";
print "\n*******************************************************\n";
$num=<STDIN>;
chomp $num;
  if($num eq "1")
  {
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


   $hash{'sex'} = get_sex();
   $hash{'age'} = get_age(); 
   $hash{'height'} = get_height();
   $hash{'weight'} = get_weight();
   $hash{'taste'} = get_taste();
   $hash{'pulse'} = get_pulse();
   $hash{'highblood'} = get_highblood();
   $hash{'lowblood'} = get_lowblood();
   $hash{'sleephours'} = get_sleephours();
   $hash{'password'} = get_password();
 
  
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
  

  my @keys = keys %hash;
  my @values = values %hash;
  my $count = keys %hash;
  $count = values %hash;
  while ((my $key,my $values) = each %hash){
  print "$key => $values\n";
  }
  select $SHUJU;
  while ((my $key,my $values) = each %hash){
  print "$key $values\n";
  }
  close $SHUJU or warn  "$0 : failed to close input file '%hash' : $!\n";
  







  #select STDOUT;
  print "\n";
  print "*" x 60;
  print "\nusername :\n";
  my $usename=<STDIN>;
  chomp $usename;
  if ( -e $usename ) {
  open SESAME, '<', $usename or die "$0 : failed to open file '$usename' : $!\n";
  while (my $line = <SESAME>) {
  ( my $canshu, my $shuzhi) = split(" ",$line);
  $infor{$canshu} = $shuzhi;
  };
  close SESAME or warn "$0 : failed to close file '$usename' : $!\n";
  while (($canshu,$shuzhi) = each %infor){
  print "$canshu => $shuzhi\n";
}
}
  else {
}
print "\n";
print "*" x 60;
print "\n\n";
print "1\.Evaluate\.\n2\.Exercise\.\n3\.Exit\.\n\n";
print "*" x 60;
print "\nPlease choose what you want to do?\n";
my $choice2 = <STDIN>;
if ( $choice2 == 1 ) {
print "\n";
print "*" x 60;
print "\n\n";
my $numb = BMI($infor{'height'}, $infor{'weight'});
my $result = BMI_evaluate( $numb );
my $blood = blood_pressure( $infor{'lowblood'}, $infor{'highblood'} );
my $sleepy = sleepingtime( $infor{'age'}, $infor{'sleephours'});


sub BMI {
 my ( $heigh, $weigh ) = @_;
 my ($BMI);
 $BMI = ( $weigh / ( $heigh * $heigh ) ) ;
 return $BMI;
}


sub BMI_evaluate {
 my ( $value ) = @_;
 print "\nThe result is according to the criterion of WHO, which suits for the adult!\n";
 print "\n\n\nyour weight is $infor{'weight'} kg, your height is $infor{'height'} m, your BMI value is $value.\n";
 if ( $value < 18.5 ) {
   print "\nYou are underweight, please have more healthy things!\n ";
  } elsif (  $value >= 24.9 ) {
    print "\nYou are overweight, please do some exercise!\n ";
  } else {
    print "\nYou are standed, please keep!\n ";
  }
}

sub blood_pressure {
 my ( $systolic, $disatolic ) = @_;
 print "\n\n\nYour blood pressure is  $systolic/$disatolic mmhg.\n"; 
 if ( $systolic < 90 and $disatolic < 60 ) {
    print "\nYou are in low blood pressure, it's dangerous!\n";
   } elsif ($systolic > 160 and $disatolic > 95 ) {
    print "\nPlease try again! If your value doesn't change, it means you are in high blood pressure and it's risking your life. Please see the doctor!\n";
   } elsif ( ( $systolic > 90 and  $systolic < 140 ) and ( $disatolic > 60 and  $disatolic < 90 ) ) {
    print "\nYour blood pressure is regular, please keep!\n";
   } else {
   print "\nYou are at the edge of the high blood pressure. Please be ccareful about your health and eat fewer salty things!\n";
   }
}



sub sleepingtime {
 my ( $ag, $time ) = @_;
 print "\n\n\nYour real sleeping time is $time h.\n";
 if ( $ag > 60 ) {
   print "\nYou need 5.5~7h to sleep in fact.\n";
   if ( $time < 7.5 and $time > 5 ) {
     print "\nYour sleeping time is suitable!\n";
   } else {
      print "\nYour sleeping time is not suitable!\n";
   }
  } elsif ( $ag > 30 and $ag <= 60 ) {
   print "\nYou need about 7h for sleep in fact.\n";
   if ( $time < 7.5 and $time > 6.5 ) {
     print "\nYour sleeping time is suitable!\n";
   } else {
      print "\nYour sleeping time is not suitable!\n";

   }

  } elsif ( $ag > 13 and $ag <= 30  ) {
   print "\nYou need about 8h for sleep in fact.\n";
   if ( $time < 8.5 and $time > 7.5 ) {
     print "\nYour sleeping time is suitable!\n";
   } else {
      print "\nYour sleeping time is not suitable!\n";
   }
  } elsif ( $ag > 4 and $ag <= 13  ) {
   print "\nYou need 10~12h to sleep in fact.\n";
  } else {
   print "\nYou need a lot of time to sleep.\n";
  }

}
}

elsif ( $choice2 == 2)  
{

my $exercise1 = exercise($infor{'age'});
 
}
else 
{
}
  }  
  elsif ($num=~/^\s*$/) {
  print"\n you already exit program\n";
  }
  else {
  print "Error! Please enter a number between 1 and 2";
  }

}
elsif ( $choice eq "2" ) 
{
  print"\n signing in your usename and password:\n";
  print "username :\n";
  my $usename=<STDIN>;
  chomp $usename;
  print "password:\n";
  my $password=<STDIN>;
  chomp $password;
  if ( -e $usename ) {
  open SESAME, '<', $usename or die "$0 : failed to open file '$usename' : $!\n";
  while (my $line = <SESAME>) {
  ( my $canshu, my $shuzhi) = split(" ",$line);
  $infor{$canshu} = $shuzhi;
  };
  my $passwd = $infor{password};
  #print "$passwd";
  #my @asd = <SESAME>;
  #print @asd;
  close SESAME or warn "$0 : failed to close file '$usename' : $!\n";
  if ( $passwd =~ /$password/ ) {
  #print %asd;
  while (($canshu,$shuzhi) = each %infor){
print "$canshu => $shuzhi\n";
}
}
  else{
  print "\nYour password is not ture!\n";
  exit;
  }
}
else {
 print "This username does not exist!\n";
 exit;
}



print "\n";
print "*" x 60;
print "\n\n";
print "1\.Evaluate\.\n2\.Exercise\.\n3\.Exit\.\n";
print "*" x 60;
print "\nPlease choose what you want to do?\n";
my $choice2 = <STDIN>;
if ( $choice2 == 1 ) {
print "\n";
print "*" x 60;
print "\n\n";


my $numb = BMI($infor{'height'}, $infor{'weight'});
my $result = BMI_evaluate( $numb );
my $blood = blood_pressure( $infor{'lowblood'}, $infor{'highblood'} );
my $sleepy = sleepingtime( $infor{'age'}, $infor{'sleephours'});


}
elsif ( $choice2 == 2)  
{

my $exercise1 = exercise($infor{'age'});
 
}
else 
{
}
 
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



sub exercise {
my  ( $aging) = @_;
$BMI1 =  BMI($infor{'height'},$infor{'weight'});
 if($BMI1<18.9){
print "you are too light!\n";
print "Do some basic  exercise and enhanced nutrient intake!\n";
   if ($aging ge 40 || $aging le 16 ) {
 print"jogging for  an hour\.";
  }
else {
print "Yoga for an hour or jogging for an hour.please choice one.\n";
  }
}
elsif ($BMI1>24.9){
print"you are overweight!\n";
print"Do more exercise to keep health!\n";
  if ($aging ge 40 || $aging le 16) {
 print"Jogging two hours or Yoga two hours\.";
  }
else {
print"Running two hours or swimming two hours \.Please choice one!\n";
  }
 }
else {
print"you are standard\.Please keep on!\n";
 if ($aging ge 40 || $aging le 16 ) {
 print"Yoga for one hour or jogging one hour\.Please choice one and you will be healthier.\n";
}
else {
print"Running for one and half an hour or jogging one and half an hour \.Please choice one and you will be healthier.\n";
 }
}
}


 


