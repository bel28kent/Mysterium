package OpusEncodingDocumentation;

# Programmer:  Bryan Jacob Bell
# Created:     Wed Jun 11 13:50:45 EDT 2025
# Modified:    Wed Jun 11 13:50:45 EDT 2025
# File:        OpusEncodingDocumentation.pl
# Syntax:      Perl 5
# Description: Provides a public hash that given an opus string provides
#              a description string.
#
#              opus string examples: "op01" "op10" etc.
#
#              description string cases:
#                "exists" --> Scriabin composed the opus and it is encoded
#                "symphonic work: not encoded" --> Scriabin composed the opus,
#                  but it has not been encoded"
#                "does not exist" --> Scriabin did not compose this opus

use strict;
use warnings;
use Exporter 'import';

our @EXPORT = qw(%OpusEncodingDocumentation);

our %OpusEncodingDocumentation = (
  "op01" => "exists",
  "op02" => "exists",
  "op03" => "exists",
  "op04" => "exists",
  "op05" => "exists",
  "op06" => "exists",
  "op07" => "exists",
  "op08" => "exists",
  "op09" => "exists",
  "op10" => "exists",
  "op11" => "exists",
  "op12" => "exists",
  "op13" => "exists",
  "op14" => "exists",
  "op15" => "exists",
  "op16" => "exists",
  "op17" => "exists",
  "op18" => "exists",
  "op19" => "exists",
  "op20" => "symphonic work (concerto): not encoded",
  "op21" => "exists",
  "op22" => "exists",
  "op23" => "exists",
  "op24" => "symphonic work: not encoded",
  "op25" => "exists",
  "op26" => "symphonic work (symphony): not encoded",
  "op27" => "exists",
  "op28" => "exists",
  "op29" => "symphonic work (symphony): not encoded",
  "op30" => "exists",
  "op31" => "exists",
  "op32" => "exists",
  "op33" => "exists",
  "op34" => "exists",
  "op35" => "exists",
  "op36" => "exists",
  "op37" => "exists",
  "op38" => "exists",
  "op39" => "exists",
  "op40" => "exists",
  "op41" => "exists",
  "op42" => "exists",
  "op43" => "symphonic work (symphony): not encoded",
  "op44" => "exists",
  "op45" => "exists",
  "op46" => "exists",
  "op47" => "exists",
  "op48" => "exists",
  "op49" => "exists",
  "op50" => "does not exist",
  "op51" => "exists",
  "op52" => "exists",
  "op53" => "exists",
  "op54" => "symphonic work (symphonic poem): not encoded",
  "op55" => "does not exist",
  "op56" => "exists",
  "op57" => "exists",
  "op58" => "exists",
  "op59" => "exists",
  "op60" => "symphonic work (symphonic poem): not encoded",
  "op61" => "exists",
  "op62" => "exists",
  "op63" => "exists",
  "op64" => "exists",
  "op65" => "exists",
  "op66" => "exists",
  "op67" => "exists",
  "op68" => "exists",
  "op69" => "exists",
  "op70" => "exists",
  "op71" => "exists",
  "op72" => "exists",
  "op73" => "exists",
  "op74" => "exists",
);
