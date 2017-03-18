# run me by using cd to get to my directory
# then type $ ruby 1_first_program.rb

puts "Hello reader."
puts "Welcome to Ruby"

puts "Lets demonstrate a simple calculation"
puts "Give me a number"
number = gets.chomp.to_i
answer = number * 2
puts "2 times #{number} is #{answer}"

