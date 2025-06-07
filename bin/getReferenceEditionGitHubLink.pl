#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     Fri Jun  6 21:04:58 EDT 2025
# Modified:    Fri Jun  6 21:04:58 EDT 2025
# File:        getReferenceEditionGitHubLink.pl
# Syntax:      Perl 5
# Description: prints the link to the PDF reference edition on GitHub

use strict;
use warnings;

my $blob = "https://github.com/bel28kent/Mysterium/blob/main/reference_editions/";

foreach my $arg (@ARGV) {
  die "Invalid filename" if ($arg !~ /^op\d+$/);
  my $filename = $arg . ".pdf";
  print $blob . "$filename\n";
}
