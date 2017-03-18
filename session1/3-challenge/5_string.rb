# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
<<<<<<< HEAD
  if string.include?("sad")
    puts string.gsub("sad","happy")
  elsif string.include?("Sad")
    puts string.gsub("Sad", "Happy")
  else
    puts string
  end
end

add_more_ruby("The clowns were sad.")
add_more_ruby("The sad dad said sad stuff.")
add_more_ruby("Sad times are ahead!")
=======
end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
