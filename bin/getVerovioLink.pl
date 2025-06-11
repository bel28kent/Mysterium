#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     3 April 2025
# Modified:    3 April 2025
# File:        getVerovioLink.pl
# Syntax:      Perl 5
# Description: makes a vhv link to github file
# Usage: ./bin/getVerovioLink op01
#        ./bin/getVerovioLink op11_no01

use strict;
use warnings;
use lib 'bin/';
use OpusEncodingDocumentation;

my $vhv = "verovio.humdrum.org/?file=github:bel28kent/Mysterium/";

foreach my $arg (@ARGV) {
  $arg =~ /(op\d+)/;
  my $encodingStatus = $OpusEncodingDocumentation{$1};
  if (!($encodingStatus eq "exists")) {
    print "$arg: $encodingStatus\n";
    next;
  }
  my $filename = "scriabin-$arg.krn";
  print $vhv . $1 . "/$filename\n";
}
