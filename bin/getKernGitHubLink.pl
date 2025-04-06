#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     Sun Apr  6 14:25:32 PDT 2025
# Modified:    Sun Apr  6 14:25:32 PDT 2025
# File:        getKernGitHubLink.pl
# Syntax:      Perl 5
# Description: prints the link to kern in repo

use strict;
use warnings;

my $blob = "github.com/bel28kent/Mysterium/blob/main/";

foreach my $arg (@ARGV) {
  $arg =~ /(op\d+)/;
  my $filename = "scriabin-$arg.krn";
  print $blob . "$1/" . "$filename\n";
}
