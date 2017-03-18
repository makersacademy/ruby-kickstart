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
# make a hash I can search through to see which grade bracket the number of
# books a student has falls within. similarly to above instead of assigning 0..9
# to D I use numbers so I can add and subtract them later. The last key/value seems sooooo hacky.
  hash = {1 => 0..9, 2 => 10..20, 3=>21..1000000000000}
# search through the hash and select the grade bracket. Spits out an array though...
  score = hash.find {|key, value| value === num_books}
# so now we have to select the element of the array we want, wich will always be [0]
#does hash include num_books? If so, return the key.
#turning the boolean values into numbers allows me to manipulate them like so now:
  if score[0] + has_read_books <= 1
    return "D"
  elsif score[0] + has_read_books == 2
    return "C"
  elsif score[0] + has_read_books == 3
    return "B"
  else
    return "A"
  end
end
