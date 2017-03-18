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
# turn boolean value into numbers i can manipulate later
  if has_read_books == true
    has_read_books = 1
  else
    has_read_books = 0
  end
#do the same for the grade boundaries
case
when num_books > 21
  num_books = 3
when num_books === 10..20
  num_books = 2
when num_books <= 9
  num_books = 1
end
#add them all together and evaluate
case
when num_books + has_read_books <= 1
  return "D"
when num_books + has_read_books == 2
  return "C"
when num_books + has_read_books == 3
    return "B"
  else
    return "A"
  end
end
