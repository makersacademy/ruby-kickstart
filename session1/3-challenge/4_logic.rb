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

# <10 books => D, 10..20 books => C, >20 bo//ok =>B


def grade(num_books, has_read_books)

=begin
  if num_books < 10 && has_read_books == false
    return 'D' # if I don't use return, the method keeps executing the code and returns the last expression evaluated, which is nil.
  elsif num_books < 10 && has_read_books == true
    return 'C'
  end

  if num_books.between?(10,20) && has_read_books == false
    return 'C'
  elsif num_books.between?(10,20) && has_read_books == true
    return 'B'
  end

  if num_books > 20 && has_read_books == false
    return 'B'
  elsif num_books > 20 && has_read_books == true
    return 'A'
  end
=end

  #the solution below is more 'DRY' :)

  if has_read_books
    if num_books > 20
      return 'A' # if I don't use return, the method keeps executing the code and returns the last expression evaluated, which is nil.
    elsif num_books.between?(10,20)
      return 'B'
    else
      return 'C'
    end
  else
    if num_books > 20
      return 'B'
    elsif num_books.between?(10,20)
      return 'C'
    else
      return 'D'
    end
  end

end

puts grade(19, false)
