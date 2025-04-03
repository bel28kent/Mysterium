#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     3 April 2025
# Modified:    3 April 2025
# File:        getVerovioLink.pl
# Syntax:      Perl 5
# Description: makes a vhv link to github file

use strict;
use warnings;

my $vhv = "verovio.humdrum.org/?file=github:bel28kent/Mysterium/";

foreach my $arg (@ARGV) {
  $arg =~ /(op\d+)/;
  my $filename = "scriabin-$arg.krn";
  print $vhv . $1 . "/$filename\n";
}
