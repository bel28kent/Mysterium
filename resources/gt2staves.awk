#!/opt/homebrew/bin/gawk -f

# Bryan Jacob Bell
# Begun: 05 July 2023
# Modified: 05 July 2023
#  gt2staves (AWK): Find kern files with
#    more than two staves.

  {
  staffNum = 0
  if($0 ~ /\*\*kern/) {
    for(i = 1; i <= NF; i++) {
      if($i == "**kern") {
        staffNum++
      }
    }
  }

  if(staffNum > 2) {
    print FILENAME
  }
}
