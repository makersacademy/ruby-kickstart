# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than 
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C", 
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#


def grade(num_books, reads_books)

  g = ""

  if reads_books
    if num_books < 10 
      g = "C"
    elsif num_books <= 20 
      g = "B"
    elsif num_books > 20 
      g = "A"
    end
  elsif !reads_books
    if num_books < 10 
      g = "D"
    elsif num_books <= 20 
      g = "C"
    elsif num_books > 20 
      g = "B"  	
   end
 end

  g

end

 puts grade(4,  false)  # => "D"
 puts grade(4,  true)   # => "C"
 puts grade(15, true)   # => "B"