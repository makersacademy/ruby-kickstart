def grade(num_books, has_read_books)
  if num_books < 10 && !has_read_books
    "D"
  elsif num_books < 10 && has_read_books
    "C"
  elsif (num_books >= 10 && num_books <= 20) && !has_read_books
    "C"
  elsif (num_books >= 10 && num_books <= 20) && has_read_books
    "B"
  elsif num_books > 20 && !has_read_books
    "B" 
  else
    "A"
   end
end

