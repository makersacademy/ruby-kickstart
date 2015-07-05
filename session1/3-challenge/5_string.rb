# Given a string, replace every instance of sad to happy
#

def add_more_ruby(string)
  #string.downcase!
  #string.gsub!(/sad/i, 'happy')
  #string
  string.gsub('sad', 'happy').gsub('Sad', 'Happy')
end

#add_more_ruby("abc sad.")       # => "The clowns were happy."
#add_more_ruby("The sad dad said sad stuff.")   # => "The happy dad said happy stuff."
#add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"
