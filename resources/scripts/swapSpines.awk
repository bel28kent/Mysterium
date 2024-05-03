#!/opt/homebrew/bin/gawk -f

# Bryan Jacob Bell
# Begun: Sun Jul 30 1:54:42 PM PDT 2023
# Modified: Mon Jul 31 4:17:37 PM PDT 2023
#  swapSpines (AWK): swap subspines in a kern file
#    converted from musicxml2hum.
#  Output should be pipe redirected to printByRecord.

BEGIN { FS = "\t" } {
  if($0 ~ /^[!\*=]/) {
    print $0
    next
  }

  for(i = NF; i >= 1; i--) {
    if(i > 1) {
      ORS = "\t"
      print $i
    } else {
      ORS = "\n"
      print $i
    }
  }
}
