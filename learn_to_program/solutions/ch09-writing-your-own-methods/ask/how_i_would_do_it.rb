def ask question 
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes' 
    return false if reply == 'no'

    puts 'Please answer "yes" or "no".' 
  end
  answer # This is what we return (true or false). 
end

# puts(ask('Do you like eating tacos?'))