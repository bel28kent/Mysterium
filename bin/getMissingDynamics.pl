#!/usr/bin/perl

# Programmer:  Bryan Jacob Bell
# Begun:       20 August 2024
# Modified:    Sat Aug 31 12:36:15 PDT 2024
# File:        getMissingDynamics.pl
# Syntax:      Perl 5
# Description: print kern files that are missing dynamics, with AGN record

use strict;
use warnings;

chomp (my @kern = `find . -path './.*' -prune -or -name '*krn' -print`);

foreach my $kern (@kern) {
  chomp (my $genre = `awk ' /AGN/ { print \$0; nextfile } ' $kern`);
  chomp (my @dynam_spine = `extractx -i "**dynam" $kern | ridx -GLIMd`);
  if (scalar (@dynam_spine) == 0) {
    printf "%-50s %s\n", $genre, $kern;
  }
}
