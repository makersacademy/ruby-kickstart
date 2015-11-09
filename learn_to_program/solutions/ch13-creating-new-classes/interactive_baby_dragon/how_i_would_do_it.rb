# using the Dragon class from the chapter
puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name
obj = Object.new # just a blank, dummy object

while true
  puts
  puts 'commands: feed, toss, walk, rock, put_to_bed, exit'
  command = gets.chomp
  if command == 'exit'
    exit
  elsif pet.respond_to?(command) && !obj.respond_to?(command)
    # I only want to accept methods that dragons have,
    # but that regular objects *don't* have.
    pet.send command
  else
    puts 'Huh? Please type one of the commands.'
  end
end
