# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
string.chars.each_cons(2).map { |elem, next_elem| next_elem if elem =~ /R/i }.compact.join
end

=begin another thought process
 what each_cons(number) does
http://ruby-doc.org/core-2.0.0/Enumerable.html#method-i-each_cons

"Iterates the given block for each array of consecutive <n> elements. If no block is given, returns an enumerator."

the problem with this one is that is return the slice that matched true
so in my string "gabrielle"

at some point my block gets passed ['b', 'r']

actually, that slice doesn't interest us because we want all characters after r's

so let's hop one iteration afterwards

when the program receives ['r', 'i'] as a slice

so if I go "gimme character if the previous one was "r"" -> .select { |prev, current| current if prev == 'r' } (how pretty)

I get the slice back, ['r', 'i']

so THEN

I have to map it

for each slice, just gimme the last elem

.map(&:last)

which equals

a.map { |a| a.last }

=end