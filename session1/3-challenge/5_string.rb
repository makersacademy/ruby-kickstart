# Given a string, replace every instance of sad to happy
# 

def add_more_ruby(string)

  a = string

  a.gsub! "sad", "happy"

  a.gsub! "Sad", "Happy"

 "#{a}"

end

 puts add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
 puts add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
 puts add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"