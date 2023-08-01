#!/opt/homebrew/bin/gawk -f

# Bryan Jacob Bell
# Begun: 04 July 2023
# Modified: 04 July 2023
# pfDynam (AWK): Add **dynam spines to
#  (two-staff) piano music in **kern.

BEGIN {
  FS = "\t"
  OFS = "\t"
} {
  if($0 ~ /^!/) {
    print $0
    next
  }

  if($1 == "**kern") {
    $(NF+1) = "**dynam"
    print $0
    next
  }
  if($1 ~ /^\*/) {
    if($1 == "*staff2") {
      $(NF+1) = "*staff1/2"
    } else if($1 == "*-") {
      $(NF+1) = "*-"
    } else {
      $(NF+1) = "*"
    }
    print $0
    next
  }
  if($1 ~ /^=/) {
    $(NF+1) = $NF
    print $0
    next
  }
  $(NF+1) = "."
  print $0
}
