#!/opt/homebrew/bin/gawk -f

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
