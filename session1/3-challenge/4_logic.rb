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

	if num_books < 10
		initial_grade = 4
	elsif num_books < 21
		initial_grade = 3
	else
		initial_grade = 2
	end

	if read_books == true
		initial_grade -= 1
	end

	if initial_grade == 4
		final_grade = "D"
	elsif initial_grade == 3
		final_grade =  "C"
	elsif initial_grade == 2
		final_grade = "B"
	elsif initial_grade == 1
		final_grade = "A"
	else
		final_grade = "Error"
	end
		
		final_grade	

end


