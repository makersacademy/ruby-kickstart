def ask question 
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == 'yes' 
      return true
    end

    if reply == 'no'
      return false 
    end

￼￼￼￼# If we got this far, then we're going to loop 
    # and ask the question again.
    puts 'Please answer "yes" or "no".'
  end
  answer # This is what we return (true or false). 
end

# likes_it = ask 'Do you like eating tacos?' 
# puts likes_it