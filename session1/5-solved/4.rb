def grade(num_books, has_read_books)
  if num_books > 20
    has_read_books ? "A" : "B"
  elsif num_books >= 10
    has_read_books ? "B" : "C"
  else num_books < 10
    has_read_books ? "C" : "D"
  end
end
