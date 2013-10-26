#!/usr/bin/perl


foreach(@ARGV) {
 my $cmd = $_; 
 open(F, "allwps.txt"); 
 while(<F>) {
  chomp; 
  $run = "$cmd $_";
  print "$run\n";  
  print `$run`;
 }
 close F;
}
