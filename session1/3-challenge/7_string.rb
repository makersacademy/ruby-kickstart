# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

string.downcase!
splitsplat = string.split(//)
result = ""

splitsplat.each_with_index do |l, index|
  if l == "r"
    result << splitsplat[index + 1].to_s
  end
end
return result
end

# well, this was an exercise in self confidence and serendipity. I got the
# code partially working very quickly, however it was failing the third
# rake. I'd remembered this exercise being raised on github a few days back. On
# reading the discussion, I was reassured to see others had approached the problem
# in the same way as me. however, there was one small difference - I had not
# used the ".to_s" method on results taken from the array. I couldn't see
# how this could be the problem preventing my code from passing - after all, it had
# successfully passed two of the tests already. But adding it in worked.
# This seems to be the key sticking point: " no implicit conversion of nil into String"
# So, as long as there IS a value, it will be implicity converted into a string.
# However, if it is nil, there needs to be an explicit conversion using .to_s, otherwise
# ruby throws a wobbly.
# I'm still unsure as to why the issue comes up when "Pirates say arrrrrrrrr" is
# passed.
# UNLESS it's to do with the fact that the final letter in the string is "r".
# Yes, that must be it - then the iteration tries to pass index + 1, ie Nil.
# I have learned something important, and feel good about how I did it.

=begin
1) pirates_say_arrrrrrrrr returns "arrrrrrrr" when given "Pirates say arrrrrrrrr"
     Failure/Error: expect(pirates_say_arrrrrrrrr 'Pirates say arrrrrrrrr').to eq 'arrrrrrrr'
     TypeError:
       no implicit conversion of nil into String
     # ./session1/3-challenge/7_string.rb:15:in `block in pirates_say_arrrrrrrrr'
     # ./session1/3-challenge/7_string.rb:13:in `each'
     # ./session1/3-challenge/7_string.rb:13:in `each_with_index'
     # ./session1/3-challenge/7_string.rb:13:in `pirates_say_arrrrrrrrr'
     # ./session1/4-spec/7.rb:11:in `block (2 levels) in <top (required)>'

Finished in 0.00105 seconds (files took 0.09564 seconds to load)
3 examples, 1 failure

Failed examples:

rspec ./session1/4-spec/7.rb:10 # pirates_say_arrrrrrrrr returns "arrrrrrrr" when given "Pirates say arrrrrrrrr"
=end
