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

# <10 books => D, 10..20 books => C, >20 books =>B

=begin
if var == 10
print “Variable is 10”
elsif var == “20”
print “Variable is 20”
else
print “Variable is something else”
end

def foo(x)
 if (1..10).include?(x)
   puts "1 to 10"
 elsif (11..20).include?(x)
   puts "11 to 20"
 end
end

=end

def grade(num_books, has_read_books)
  # My solution
  puts num_books
  if num_books < 10
    return has_read_books ? "C" : "D"
  end
  if (10..20).include?(num_books)
    return has_read_books ? "B" : "C"
  end
  if num_books > 20
    return has_read_books ? "A" : "B"
  end
end
puts grade(14,true)
puts (10..20).include?(14)

=begin
# Makers solution
def grade(num_books, reads_books)
  if reads_books
    return "C" if num_books <  10
    return "B" if num_books <= 20
    return "A"
  else
    return "D" if num_books <  10
    return "C" if num_books <= 20
    return "B"
  end
end
#
=end
#
