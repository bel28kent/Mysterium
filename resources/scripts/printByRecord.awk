#!/opt/homebrew/bin/gawk -f

# Bryan Jacob Bell
# Begun: Sat Jul 29 7:16:31 PM PDT 2023
# Modified: Tue Aug 1 0:51:09 PM PDT 2023
#  printByRecord (AWK): reassemble printByStaff
#    output so that staves are on one record

BEGIN {
  # set field separators to \t (kern format)
  FS = "\t"
}  {
  # if record is reference, comment, or measure num,
  #    print and immediately move to next record.
  if($0 ~ /^[!=]/) {
    print
    next
  }

  if($0 ~ /^\*/) {
    # use **kern to get initial count of spines
    if($0 ~ /\*\*kern/) {
      spineCount = NF
      print $0
      next
    }
    # increment for each spine split
    if($0 ~ /\^/) {
      for(i = 1; i <= NF; i++) {
        if($i == "*^") {
          spineCount++
        }
      }
      print $0
      next
    }
    # decrement for each rejoin. only one rejoin on a line.
    if($0 ~ /v/) {
      spineCount--
      print $0
      next
    }
    # if some other interpretation, print and move to next record
    print $0
    next
  }

  # split record into fields
  lenP = split($0, toPrint)

  # read in lines until correct number of fields for record
  if(lenP != spineCount) {
    while(lenP < spineCount) {
      getline nextLine
      lenN = split(nextLine, nextFields)
      for(i = 1; i <= lenN; i++) {
        lenP++
        toPrint[lenP] = nextFields[i]
      }
    }
  }

  # once fieldCount == spineCount, print the reassembled record
  for(i = 1; i <= lenP; i++) {
    if(i < lenP) {
      ORS = "\t"
      print toPrint[i]
    } else {
      ORS = "\n"
      print toPrint[i]
    }
  }

  # clean toPrint array for safety
  for(each in toPrint) {
    delete toPrint[each]
  }
}

########## Variables and Arrays ##########
## Variables
#    spineCount (int)
#      count of number of subspines to put on one record
#    lenP (int)
#      length of toPrint array
#    nextLine (str)
#      next record of file, read in by getline to get number of
#      necessary fields
#    lenN (int)
#      length of nextFields array
## Array
#    toPrint
#      array of fields to put on one record
#    nextFields
#      array of nextLine split into fields
