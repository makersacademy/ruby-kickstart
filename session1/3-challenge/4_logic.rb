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


def grade(num_books, has_read_books)
  if has_read_books
    return "A" if num_books > 20
    return "C" if num_books < 10
    return "B"
  else
    return "B" if num_books > 20
    return "D" if num_books < 10
    return "C"
  end
end

# things I have learned from this exercise:
# 1. Initially I came at it from the wrong direction, i.e.
# trying to assign the grade first based on number of books,
# and then modify it based on whether has_read_books was T or F.
# when I started looking into using arrays to achieve this, I
# realised there must be a simpler way.
# Also, I started out using puts instead of return.
# I also was working on a means of evaluating the mid-range grades (i.e. those
# who hold 10 - 20 books) before realising a more elegant solution is to just have it
# as the "default" value that the branch of the method returns. 
#
