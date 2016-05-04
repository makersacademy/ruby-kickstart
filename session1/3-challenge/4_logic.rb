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
  grades = ["A", "B", "C", "D"]
  if num_books < 10
    x = "D"
  elsif num_books > 20
    x = "B"
  else
    x = "C"
  end
  if has_read_books == true
    y = grades.find_index(x)
    grades[y - 1]
  else
    x
  end
end
