ary = Array.new
5.times do |random_word| # <-- It can be anything I like
  ary << random_word     # <-- As long as it's the same here
end
puts ary

puts

ary = Array.new
1.step 10 , 2 do |n|
  ary << n
end
puts ary
