# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  string.gsub!('sad', 'happy')
  string.gsub!('Sad', 'Happy')
  string
end

# I spent a lot of time working out the exact syntax for the .gsub method. I
# have also appreciated that there is the destructive and non-destructive (!) version,
# and that it is case sensitive. I suspect the above isn't the most elegant
# solution - the repetition of .gsub makes me go from happy to sad.
