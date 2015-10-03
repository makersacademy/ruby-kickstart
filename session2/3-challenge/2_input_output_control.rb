=begin (below is my version which works fine but
for some reason doesn't seem to pass the rspec tests!)

def hi_hi_goodbye
  loop do
  puts "Enter a number or bye"
  number = gets.chomp
  print "hi " * number.to_i
  if number.chomp == "bye"
    puts "Goodbye!"
    exit
  end
  end
end
=end

def prompt
  puts 'Enter a number or bye'
end

def hi_hi_goodbye
  prompt
  while (line = gets) && (line !~ /bye/) # first is an assignment statement that returns a line or nil, and is thus boolean
    line.to_i.times { print 'hi ' }
    puts
    prompt
  end
  puts "Goodbye!"
end


hi_hi_goodbye if $0 == __FILE__