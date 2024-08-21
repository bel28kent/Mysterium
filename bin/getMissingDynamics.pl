#!/usr/bin/perl

# Programmer:  Bryan Jacob Bell
# Begun:       20 August 2024
# Modified:    20 August 2024
# File:        getMissingDynamics.pl
# Syntax:      Perl 5
# Description: print kern files that are missing dynamics, with AGN record

use strict;
use warnings;

my @kern = `find . -path './.*' -prune -or -name '*krn' -print`;
chomp (@kern);

foreach my $kern (@kern) {
  my $genre = `awk ' /AGN/ { print \$0; nextfile } ' $kern`;
  chomp ($genre);
  my @dynam_spine = `extractx -i "**dynam" $kern | ridx -GLIMd`;
  if (scalar (@dynam_spine) == 0) {
    printf "%-50s %s\n", $genre, $kern;
  }
}
