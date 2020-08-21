#!/usr/bin/perl

=begin

Assignment 4:Part 1: Convert pdfout11 to text, read the text file and print things mentioned below:
1) Name
2) Email
3) Statement date
4) Bank Name
5) Bank Address
6) Folio No

=cut

use v5.10;
use strict;
use warnings;


# You can then either read the file one line at a time...

sub main 
{ 
    
    my $stmt='/home/ubuntu/Documents/perl/parsing/pdfout11.txt';
    open(FHR, '<', $stmt) or die "Failed to open file: $stmt";
    while(my $String = <FHR>) 
    { 
        if($String =~ /\b^[A-Z]{8}[ ][A-Z]{7}\b/) 
        { 
            print ("Name = $String \n"); 
        }
	elsif($String =~ /Statement Date(.*)/)
	{
		print("$String");
	}
	elsif($String =~ /E-Mail(.*)/)
	{
		print("$String");
	}
	elsif($String =~ /^[A-Z]+(?:[ ])(?:[A-Z]*[ ])[A-Z]{4}(?:[ ][A-Z]*)/)
	{
		print("Bank Name: $String");
	}
	elsif($String =~ /NEW EXCELSIOR CINEMA \/ OLD BAZAR\,KHADKI \/PUNE\,MAHARASHTRA \/ KHADKI \/ 411003/)
	{
		
		print("Bank Address: $String");
	}
	elsif($String =~ /Folio No.(.*)/)
	{
		print("$String");
	}
    } 
    close(FHR);# m/(?s)(?<=haha)
} 
main(); 

