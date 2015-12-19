# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  new_string = string

  new_string.gsub! "sad", "happy" if new_string.include? "sad"
  new_string.gsub! "Sad", "Happy" if new_string.include? "Sad"

  new_string
end
