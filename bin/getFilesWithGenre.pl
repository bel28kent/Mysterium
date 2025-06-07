#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     Tue Apr  1 11:59:59 PDT 2025
# Modified:    Fri Apr  4 10:31:29 PDT 2025
# File:        getFilesWithGenre.pl
# Syntax:      Perl 5
# Description: Prints a list of files that match genres

use strict;
use warnings;
use feature 'signatures';
no warnings 'experimental::signatures';

chomp (my @dirs = `find . -type d -and -name 'op*' -print`);
map { directoryHandler ($_) } sort (@dirs);


####################
# SUBROUTINES

sub directoryHandler ($dir) {
  chomp (my @files = `find $dir -name '*krn' -print`);
  map { fileHandler ($_) } sort (@files);
}

sub fileHandler ($file) {
  my $genre = getGenre ($file);
  if ($genre && member ($genre)) {
    printf "%-10s %s\n", $genre, $file;
  }
}

sub getGenre ($file) {
  my $genre;
  open (my $fh, "<", $file);
  while (my $line = readline ($fh)) {
    if ($line =~ m/AGN/) {
      $genre = $line =~ s/!!!AGN:\ //r;
      chomp ($genre);
    }
  }
  close ($fh);
  return $genre;
}

sub member ($genre) {
  foreach my $arg (@ARGV) {
    return 1 if $arg eq $genre;
  }
}
