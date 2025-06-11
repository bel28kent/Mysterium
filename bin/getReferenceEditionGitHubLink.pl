#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     Fri Jun  6 21:04:58 EDT 2025
# Modified:    Fri Jun  6 21:04:58 EDT 2025
# File:        getReferenceEditionGitHubLink.pl
# Syntax:      Perl 5
# Description: prints the link to the PDF reference edition on GitHub

use strict;
use warnings;
require './bin/OpusEncodingDocumentation.pl';

my $blob = "https://github.com/bel28kent/Mysterium/blob/main/reference_editions/";

foreach my $arg (@ARGV) {
  if ($arg !~ /^op\d+$/) {
    print "Invalid Filename: $arg\n";
    next;
  }
  my $encodingStatus = OpusEncodingDocumentation::getOpusEncodingDocumentation($arg);
  if (!($encodingStatus eq "exists")) {
    print "$arg: $encodingStatus\n";
    next;
  }
  my $filename = "$arg.pdf";
  print $blob . "$filename\n";
}
