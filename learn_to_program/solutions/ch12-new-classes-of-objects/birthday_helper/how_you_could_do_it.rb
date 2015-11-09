# First, load in the birthdates.
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  # Find the index of first comma,
  # so we know where the name ends.
  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

# Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..5]
end
