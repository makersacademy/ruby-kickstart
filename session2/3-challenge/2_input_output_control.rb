# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye

class Object
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end

puts "Enter a number: "
line = gets.chomp
while line.is_number? == true
	line = gets.chomp
puts "hi " * line.to_i
end
puts "goodbye"

