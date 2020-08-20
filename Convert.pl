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

my $stmt = '/home/ubuntu/Documents/perl/parsing/pdfout11.pdf';

open(FHR, '<', $stmt) or die "Failed to open file: $stmt";
# You can then either read the file one line at a time...
while(<FHR>) {
print "$_";
}

close(FHR);
