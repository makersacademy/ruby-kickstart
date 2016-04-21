# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C",
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

# <10 books => D, 10..20 books => C, >20 book =>B


def grade(num_books, reads_books)         #defines the method and accepts 2 parameters
  if reads_books                          #if statement to check if true
    return "C" if num_books < 10          #returns grade C if less than 10
    return "B" if num_books <= 20         #retunes grade B if less than or equal to 20
    return "A"                            #returns grade A if 21 or above
  else                                    #else reads_books is false
    return "D" if num_books < 10          #returns grade D if less than 10
    return "C" if num_books <=20          #returns grade C if less than of qual to 20
    return "B"                            #returns B if 21 or above
  end                                     #ends the if statement
end                                       #ends the method


