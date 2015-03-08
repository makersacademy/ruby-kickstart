def mod_three(numbers)
  myary = []
  numbers.map {|num| myary << num % 3 unless num % 3 == 0 }
  myary
end