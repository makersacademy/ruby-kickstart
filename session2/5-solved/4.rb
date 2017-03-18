def get_squares(numbers)
  numbers.select {|num| numbers.include? num ** 2 }.sort
end
