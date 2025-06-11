#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     Sun Apr  6 14:25:32 PDT 2025
# Modified:    Wed Jun 11 14:18:19 EDT 2025
# File:        getKernGitHubLink.pl
# Syntax:      Perl 5
# Description: prints the link to kern in repo
# Usage: ./bin/getKernGitHubLink op01
#        ./bin/getKernGitHubLink op11_no01

use strict;
use warnings;
require './bin/OpusEncodingDocumentation.pl';

my $blob = "github.com/bel28kent/Mysterium/blob/main/";

foreach my $arg (@ARGV) {
  $arg =~ /(op\d+)/;
  my $encodingStatus = OpusEncodingDocumentation::getOpusEncodingDocumentation($1);
  if (!($encodingStatus eq "exists")) {
    print $1 . ": $encodingStatus\n";
    next;
  }
  my $filename = "scriabin-$arg.krn";
  print $blob . "$1/" . "$filename\n";
}
