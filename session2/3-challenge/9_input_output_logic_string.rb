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

=begin
def deaf_grandma
  user = gets.chomp
  if user != user.upcase
    loop do
      puts "HUH?! SPEAK UP, SONNY"
      user = gets.chomp
      puts "NO, NOT SINCE 1938" if user == user.upcase
      break if user == "BYE"
    end
  else
  end
end
=end

=begin
def deaf_grandma
  user = gets.chomp
    while user != "BYE"
      puts "HUH?! SPEAK UP SONNY" if user != user.upcase
      user = gets.chomp
      puts "NO, NOT SINCE 1938" if user == user.upcase
      user = gets.chomp
    end
  end
=end

  def deaf_grandma
  user = gets.chomp
    while user != "BYE"
      if user != user.upcase
        puts "HUH?! SPEAK UP, SONNY!"
        user = gets.chomp
      elsif user == user.upcase && user != ""
        puts "NO, NOT SINCE 1938!"
        user = gets.chomp
      else
        puts "HUH?! SPEAK UP, SONNY!"
        user = gets.chomp
      end
    end
  end


=begin
anything lowercase reply HUH SPEAK UP ...
anything upcase reply NO NOT SINCE...
only stop when reply is BYE.
=end

# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__
