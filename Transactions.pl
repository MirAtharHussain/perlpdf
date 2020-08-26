#!/usr/bin/perl

=begin

Part 2: Print transaction details  as string (date,transaction,amount,price and unitsbalance units,folio no)  Note: append folio no from our parsed value

=cut

use v5.10;
use strict;
use warnings;

sub main 
{ 
    
    my $stmt='/home/ubuntu/Documents/perl/parsing/pdfout11.txt';#File path
    open(FHR, '<:encoding(utf8)', $stmt) or die "Failed to open file: $stmt";#Reading the text file
   
  
    while(my $String = <FHR>) 
    {
   
      if ( $String =~ /Date\s+Transaction\s+Amount.*?Balance\s+Units(.*?)(?:Balance\s+Units|Current\s+Load\s+Structure)/sgi ) {
   		 my $match = $1;
		print("$match","\n");
		 my @rows = split("\n", $match);
    		 for my $row (@rows){
        		print ("$row","\n");
		}
		my @rd = split('    ', $row); 
  
	
		for my $i (@rd)  
		{ 
    			print ("$i\n"); 
		}
	}
	
     }
      
    close(FHR);
} 
main(); 
