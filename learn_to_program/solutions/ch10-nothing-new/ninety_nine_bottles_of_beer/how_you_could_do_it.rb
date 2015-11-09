# english_number as above, plus this:
num_at_start = 5 # change to 9999 if you want
num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'
  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'
end

# puts "Two bottles of beer on the wall, two bottles of beer!"
# puts "Take one down, pass it around, one bottle of beer on the wall!"
# puts "One bottle of beer on the wall, one bottle of beer!"
# puts "Take one down, pass it around, no more bottles of beer on the wall!"
