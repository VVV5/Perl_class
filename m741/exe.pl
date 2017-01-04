#!/usr/bin/perl -w

my $exercise1 = exercise($infor{'age'});



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
