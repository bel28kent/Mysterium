#!/opt/homebrew/bin/gawk -f

# Bryan Jacob Bell
# Begun: Fri Jul 28 6:25:34 PM PDT 2023
# Modified: Fri Jul 28 6:25:34 PM PDT 2023
#  printByStaff (AWK): Take input with subspines: 16A#/LL	2F#\	2.r	8d#/	.
#    The first two tokens are staff2, the middle two staff1, the null token is an empty dynam token
#    Output should look like this:
#      16A#/LL	2F#\
#      2.r	8d#\
#      .

BEGIN {
  # set fs to tabs for kern data.
  FS = "\t"

  # read in spinenum of file.
  # spinenum numbers each subspine by spine number (in opposite order of staffnums).
  i = 1
  command = "spinenum "ARGV[1]
  while((command | getline) > 0) {
    spineTrace[i] = $0
    i++
  }
  close(command) 
} {
  # if record is reference, comment, interpretation, or measure num,
  #    print and immediately move to next record.
  if($0 ~ /^[!\*=]/) {
    print $0
    next
  }

  # split spineTrace for current record into fields.
  lenT = split(spineTrace[FNR], trace)

  # counter to keep track of how many fields have been processed.
  fieldCount = 1
  # counter to keep track of how many successive elements in trace are equal.
  equals = 1

  # iterate over the trace array.
  for(i = 1; i <= lenT; i++) {
    # count number of successive elements in trace array that are equal.
    if(trace[i] == trace[i+1]) {
      equals++
    } else {
      # once current trace element and next element are not equal,
      #    create array of fields to print.
      k = 1
      while(equals > 0) {
        toPrint[k] = $fieldCount
        fieldCount++
        k++
        equals--
      }
      # reset equals counter to 1 for next spine.
      equals = 1
      # print toPrint
      lenP = length(toPrint)
      for(j = 1; j <= lenP; j++) {
        if(j < lenP) {
          ORS = "\t"
          print toPrint[j]
        } else {
          ORS = "\n"
          print toPrint[j]
        }
      }
      # clean toPrint array. necessary because spines may have different numbers
      #    of subspines, leading to left over array elements.
      for(each in toPrint) {
        delete toPrint[each]
      }
    }
  }
}

########## Variables and Arrays ##########
## Variables
#    lenT (int)
#      the length of the trace array
#    fieldCount (int)
#      counter of number of fields that have
#      been processed
#    equals (int)
#      counter of number of successive spine
#      numbers that are equal. equals starts
#      on 1 because we want the number of equal
#      elements, not the number of equal pairs.
## Arrays
#    spineTrace
#      Array of output of input file passed
#      to spinenum program
#    trace
#      Array of a given spineTrace element
#      split into the spine numbers
#    toPrint
#      Array of all fields within one staff to
#      print on their own record
