# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  string.gsub("sad", "happy").gsub("Sad", "Happy")
  # gsub command will replace all instances of the first parameter with the second one
  # we've used two here to cover any capitalised instances of "Sad"
end