def two_decimal_places(number)
  ((number*100).to_i).to_f / 100
end

puts two_decimal_places(10.1289767789)
puts two_decimal_places(-7488.83485834983)
puts two_decimal_places(4.653725356)
