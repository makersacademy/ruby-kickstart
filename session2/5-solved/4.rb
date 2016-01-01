def get_squares(numbers)
  numbers.select { |n| numbers.include? n*n }.sort
end

b = [2, 4, 5, 25, 30]

puts get_squares(b)


