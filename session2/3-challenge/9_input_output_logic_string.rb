# Taken from http://pragprog.com/titles/fr_ltp/learn-to-program
#
# Write a Deaf Grandma program. Whatever you say to grandma (whatever
# you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless
# you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938!
# You can't stop talking to grandma until you shout BYE.
#
# Hint: Don't forget about chomp! "BYE\n" is not the same as "BYE"
# (check the String cheatsheet if you need)
#
# remember, you can try your program by going to the terminal and typing   $ ruby 9_input_output_logic_string.rb
#
# example:
#
#
# USER:     $ ruby 9_input_output_logic_string.rb
# USER:     hi grandma.
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     HI GRANDMA!
# GRANDMA:  NO, NOT SINCE 1938!
# USER:     bye
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     BYE


def deaf_grandma
  while (response = gets.chomp) != "BYE"
    if response == response.upcase && response != ""
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

# originally I was doing this:

=begin
def deaf_grandma

while (response = gets.chomp!) != "BYE"
  if response != response.upcase || response == ""
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO! NOT SINCE 1938!"
  end
end
end
=end

# however, for some reason, couching the logic in this way doesn't work - it won't pass
# the rake - the error message is:

=begin
Syntax OK
rspec -cr '/Users/adams/Ronin/ruby-kickstart/session2/3-challenge/9_input_output_logic_string.rb' -r enumerator '/Users/adams/Ronin/ruby-kickstart/session2/4-spec/9.rb' --fail-fast
...F

Failures:

  1) deaf_grandma says huh, no, huh for input 'hi grandma.', 'HI GRANDMA!', 'bye', 'BYE'
     Failure/Error: expect(call_deaf_grandma "hi grandma.\nHI GRANDMA\nbye").to eq [huh,no,huh]

       expected: ["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "HUH?! SPEAK UP, SONNY!"]
            got: ["HUH?! SPEAK UP, SONNY!", "NO! NOT SINCE 1938!", "HUH?! SPEAK UP, SONNY!"]

       (compared using ==)
     # ./session2/4-spec/9.rb:26:in `block (2 levels) in <top (required)>'

Finished in 0.00138 seconds (files took 0.09878 seconds to load)
4 examples, 1 failure

Failed examples:

rspec ./session2/4-spec/9.rb:25 # deaf_grandma says huh, no, huh for input 'hi grandma.', 'HI GRANDMA!', 'bye', 'BYE'

rake aborted!
=end

# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__
