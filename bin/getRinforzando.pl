#!/usr/bin/perl

# Programmer:  Bryan Jacob Bell
# Begun:       Mon Aug 26 12:31:03 PDT 2024
# Modified:    Mon Aug 26 12:31:03 PDT 2024
# File:        getRinforzando.pl
# Syntax:      Perl 5
# Description: finds kern files that have rinforzando encoded as "z" in **kern

use strict;
use warnings;

chomp (my @files = `find . -path './.*' -prune -or -name '*krn' -print`);
foreach my $file (@files) {
  chomp (my $genre = `awk ' /AGN/ { print \$0 ; nextfile } ' $file`);
  chomp (my @rfz = `extractx -i "**kern" $file | ridx -GLIMd | awk ' /z/ '`);
  if (scalar (@rfz) > 0) {
    printf "%-50s %s\n", $genre, $file;
  }
}
