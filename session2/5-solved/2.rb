def hi_hi_goodbye
  prompt = "Enter a number"
  while (number = gets) && (number !~ /bye/)
    number.to_i.times do (print "hi ")
    end
    prompt
  end
  puts "goodbye"
end