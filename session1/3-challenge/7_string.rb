# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  # We need to return a new string, so lets make an empty one first
  to_return = ""
  # Create a varable called add_next and set it to false intially
  add_next = false
  # Iterate over string as many times as the length of the string
  string.size.times do |index|
    # Create a varaible called current_char which index's through string and pulls the next character
    current_char = string[index, 1]
    # Add the current_char if add_next is true
    to_return << current_char if add_next
    # add_next is true if the current_char is r or R
    add_next = (current_char == 'r' || current_char == 'R')
  end
  # return to_return
  to_return
end

=begin
  This is what it looks like without comments

  def pirates_say_arrrrrrrrr(string)

    to_return = ""
    add_next = false

    string.size.times do |index|
      current_char = string[index, 1]
      to_return << current_char if add_next
      add_next = (current_char == 'r' || current_char == 'R')
    end

    to_return
    
  end

=end
