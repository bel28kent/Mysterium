#!/usr/bin/env perl

# Programmer:  Bryan Jacob Bell
# Created:     Wed Jun 11 13:49:42 EDT 2025
# Modified:    Wed Jun 11 13:49:42 EDT 2025
# File:        getOpusEncodingDocumentation.pl
# Syntax:      Perl 5
# Description: prints the encoding documentation for the given opus

use strict;
use warnings;
use './bin/OpusEncodingDocumentation.pl';

map { print "$_\n" } $OpusEncodingDocumentation{$ARGV[0]};
