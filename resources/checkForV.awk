#!/opt/homebrew/bin/gawk -f

  {
  if($0 !~ /\*v/) {
    next
  } else {
    numVs = 0
    lenC = split($0, chars, "")
    for(i = 1; i <= lenC; i++) {
      if(chars[i] == "v") {
        numVs++
      }
    }
    if(numVs > 2) {
      print FILENAME
      nextfile
    }
  }
}
