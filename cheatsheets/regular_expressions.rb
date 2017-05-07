# modified version of Ryan Davis' cheatsheet at http://www.zenspider.com/Languages/Ruby/QuickRef.html#11

# =====  Quickreference  =====
# .             any character except newline
# [ ]           any single character of set
# [^ ]          any single character NOT of set
# *             0 or more previous regular expression
# *?            0 or more previous regular expression (non-greedy)
# +             1 or more previous regular expression
# +?            1 or more previous regular expression (non-greedy)
# ?             0 or 1 previous regular expression
# |             alternation
# ( )           grouping regular expressions
# ^             beginning of a line or string
# $             end of a line or string
# {m,n}         at least m but most n previous regular expression
# {m,n}?        at least m but most n previous regular expression (non-greedy)
# \1-9          nth previous captured group
# \&            whole match
# \`            pre-match
# \'            post-match
# \+            highest group matched
# \A            beginning of a string
# \b            backspace(0x08)(inside[]only)
# \b            word boundary(outside[]only)
# \B            non-word boundary
# \d            digit, same as[0-9]
# \D            non-digit
# \S            non-whitespace character
# \s            whitespace character[ \t\n\r\f]
# \W            non-word character
# \w            word character[0-9A-Za-z_]
# \z            end of a string
# \Z            end of a string, or before newline at the end
# (?#)          comment
# (?:)          grouping without backreferences
# (?=)          zero-width positive look-ahead assertion
# (?!)          zero-width negative look-ahead assertion
# (?>)          nested anchored sub-regexp. stops backtracking.
# (?imx-imx)    turns on/off imx options for rest of regexp.
# (?imx-imx:re) turns on/off imx options, localized in group.



# =====  Constructing  =====

# to create a regex, just surround it with slashes
/regex/       # => /regex/
/regex/.class # => Regexp


# if you have a bunch of / in your regex, you would have to escape them, so that they don't look like the end of the regex
# so you can also create a regex with %r followed by a delimiter (just like %w for Arrays of Strings)
%r(regex)     # => /regex/
%r[regex]     # => /regex/
%r{regex}     # => /regex/
%r(/usr/bin)  # => /\/usr\/bin/

# you can also interpolate
str = "ege"
/r#{str}x/    # => /regex/



# =====  Ways to Use Regex (simple)  =====
str = "This is a cheatsheet for regular expressions."

# get the index of a match
str =~ /h../ # => 1
str =~ /q../ # => nil

# get the content of a match
str[/h../]  # => "his"
str[/q../]  # => nil

# substitute the first match with sub, and every match with gsub (the g means to apply the regex "globally" to the String -- g is a flag in some other languages)
str = "bobbling babbling bubbles"
str.sub(  /b.b/ , "--replacement--" )       # => "--replacement--bling babbling bubbles"
str.gsub( /b.b/ , "--replacement--" )       # => "--replacement--bling --replacement--bling --replacement--bles"
str.gsub( /b.b/ ) { |match| match.upcase }  # => "BOBbling BABbling BUBbles"

# find all occurrences of a match
str.scan(/b.b/)   # => ["bob", "bab", "bub"]

# use the match as a delimiter, and find everything inbetween
str.split(/b.b/)  # => ["", "bling ", "bling ", "bles"]

# These don't directly work on Symbols, but if you invoke the grep method on an Array
# it will convert them to Symbols before checking your regular expression
# This will go through each element, and if the regex matches it, that element will be in the return array
words = %w(Oh, oh, oh, finding the answer. Oh, oh, oh, oh, oh. Finding that there ain't no answer to find.)
words.grep(/e/) # => ["the", "answer.", "there", "answer"]



# =====  Flags  =====
# You can append a flag to the end of a regex to alter its behaviour
# /i         case insensitive
# /o         only interpolate #{} blocks once
# /m         multiline mode - '.' will match newline
# /x         extended mode - whitespace is ignored
# /[neus]    encoding: none, EUC, UTF-8, SJIS, respectively

"BOBble bobble".scan(/b.b/)  # => ["bob"]
"BOBble bobble".scan(/b.b/i) # => ["BOB", "bob"]

str = "bobble\nbubble\nbabble"
str[/e.b/]  # => nil
str[/e.b/m] # => "e\nb"



# =====  Matching Characters  =====
# Any character by itself will match that character
"abc"[/a/]  # => "a"
"abc"[/ab/] # => "ab"
"abc"[/ac/] # => nil
"abc"[/A/]  # => nil
"abc"[/A/i] # => "a"

# A dot will match any character except newline
"ab\ncd".scan(/./) # => ["a", "b", "c", "d"]

# Brackets are how you define a set of characters that are allowed to match one particular character
str = "bobble bubble babble"
str.scan(/b.b/)     # => ["bob", "bub", "bab"]
str.scan(/b[oa]b/)  # => ["bob", "bab"]

# you can also give ranges when inside of brackets by specifying a start and end character
# this is the same as /b[abcdefghijklmnopqrst]b/
str.scan(/b[a-t]b/)                                                 # => ["bob", "bab"]
# this is the same as /b[abcnop]b/
str.scan(/b[a-cn-p]b/)                                              # => ["bob", "bab"]
alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
alphabet.scan(/[a-cmnoy-z]/)                                        # => ["a", "b", "c", "m", "n", "o", "y", "z"]


# To match anything NOT in the set, put a caret at the beginning of the brackets
str.scan(/b[^o]b/) # => ["bub", "bab"]



# =====  Named Sets  =====
# \d digit, same as[0-9]
# \D non-digit
# \S non-whitespace character
# \s whitespace character[ \t\n\r\f]
# \W non-word character
# \w word character[0-9A-Za-z_]



# =====  Quantifiers  =====
# To continue to match 0 or more previous regular expression, use a spat
# in this case, we will match digits that occur in series of 0 or more, if they follow the text MX
# notice that they are greedy, they try to match as much number as they can
str = "The product tags are plain MX, MX104, MX952, and MX7511."
str.scan(/MX[1-9]*/) # => ["MX", "MX1", "MX952", "MX7511"]

# the plus does the same thing as the splat, but matches 1 or more insetad of 0 or more
str.scan(/MX[1-9]+/) # => ["MX1", "MX952", "MX7511"]

# to make them non greedy, so that they match as little as they can instead of as much as they can, put a question mark after them
str = "Then I said 'Oh no' and he said 'oh yes!', can you believe it?"
str[/'.*'/]   # => "'Oh no' and he said 'oh yes!'"
str[/'.*?'/]  # => "'Oh no'"

# Use a question mark to match 0 or 1 time
str = "The product tags are plain MX, MX104, MX952, and MX7511."
str.scan(/MX[0-9]?/) # => ["MX", "MX1", "MX9", "MX7"]

# specify a minimum and maximum number of times to look for whatever is to the left by using curly braces
numbers = "1 12 123 1234 12345 123456 1234567 12345678 123456789 1234567890"
numbers.scan(/\d{4,8}/) # => ["1234", "12345", "123456", "1234567", "12345678", "12345678", "12345678"]
# Whoops, things are a little tricky! That isn't what I meant to match at all, it is matching the "1245678" out of things like "1234567890"
numbers.scan(/\b\d{4,8}\b/) # => ["1234", "12345", "123456", "1234567", "12345678"]



# =====  Logic, Grouping And Control  =====
# use a single pipe to express alternation (this one or that one)
str = "I'm planning a trip to the moon, and then from there to venus, and from there to the center of milky way!"
str.scan(/moon|venus|milky way/) # => ["moon", "venus", "milky way"]

# you can group things together with parentheses
str = "I rode a sunbeam from the sunburst on Sunday."
str.gsub(/sun(beam|burst|day)/i) { |match| match.upcase } # => "I rode a SUNBEAM from the SUNBURST on SUNDAY."

# Parentheses capture whatever is matched inside of them. You can access the capture in Ruby with the variables $1 - $9
str = "location: France, language: French, name: Aimée"
str =~ /location: (\w+), language: (\w+), name: (\w+)/
$1  # => "France"
$2  # => "French"
$3  # => "Aimée"
$4  # => nil

# When you need to refer back to a capture group in a String, you can use \1 through \9
str = "I rode a sunbeam from the sunburst on Monday."
str.gsub( /(sun|mon)(beam|burst|day)/i , '(\1)(\2)' ) # => "I rode a (sun)(beam) from the (sun)(burst) on (Mon)(day)."
# warning, double quoted strings will require you to escape the slash in front of 1 and 2:
'(\1)(\2)'    # => "(\\1)(\\2)"
"(\\1)(\\2)"  # => "(\\1)(\\2)"

# If you don't want the group to capture, place ?: at the front of it. Now, the second group is the first capture group.
str = "I rode a sunbeam from the sunburst on Monday."
str.gsub( /(?:sun|mon)(beam|burst|day)/i , '(\1)(\2)' ) # => "I rode a (beam)() from the (burst)() on (day)()."

# If you want to conditionally match, if you see something ahead (in 1.9, you can also match behind)
# then use (?=) and if you want to match if you do not see something ahead, use (?!)
# NOTE THAT THESE DO NOT TAKE UP ANY WIDTH IN THE MATCH
str = "This is the firstday of the secondstone of the month."
str.scan(/(?:first|second)(?:stone|day)/) # => ["firstday", "secondstone"]
str.scan(/(?:first|second)(?=stone)/) # => ["second"]
str.scan(/(?:first|second)(?!stone)/) # => ["first"]



# =====  Zero Width Matchers  =====
# caret to match the beginning of a line, and dollar sign to match end of a line
# note that in this example, we don't need multiline because the match itself is not going across multiple lines
str = "Hello my\ndarling how\nare you?"
str.scan(/^./)      # => ["H", "d", "a"]
str.scan(/.$/)      # => ["y", "w", "?"]
str.scan(/.$.^./)   # => []
str.scan(/.$.^./m)  # => ["y\nd", "w\na"]

# \A and \Z are just like ^ and $, but they match the beginning and end of the entire string, rather than just the line
str.scan(/\A./)     # => ["H"]
str.scan(/.\Z/)     # => ["?"]

# to match the break between a word and nonword boundry, use \b
str.scan(/\w\b/) # => ["o", "y", "g", "w", "e", "u"]
str.scan(/\b\w/) # => ["H", "m", "d", "h", "a", "y"]

Arrays

[ 1 , 2 , 3 ]                       # => [1, 2, 3]
Array.new(2)                        # => [nil, nil]
Array.new(5) { |i| i * 5 }          # => [0, 5, 10, 15, 20]
Array.new(2) { Array.new(2) }       # => [[nil, nil], [nil, nil]]
ary = [ ]                           # => []
ary = Array.new                     # => []
  # initializing an array of strings on whitespace
%w(this that, and the other)        # => ["this", "that,", "and", "the", "other"]


# =====  Accessing and assigning  =====
ary = %w(ruby python perl php javascript c)
ary[0]                # => "ruby"
ary[1]                # => "python"
ary[2]                # => "perl"
ary[3]                # => "php"
ary[4] = 'ecmascript'
ary                   # => ["ruby", "python", "perl", "php", "ecmascript", "c"]

  # negative indexes are applied from the end
ary[-1]               # => "c"
ary[-2]               # => "ecmascript"
ary[-3]               # => "php"

  # first and last (unfortunately can't do ary.first = 'abc' , for reasons that will become clearer when we talk more about the object model)
ary.first             # => "ruby"
ary.last              # => "c"


  # subarrays, give a range of indexes, or a start index and length
ary                   # => ["ruby", "python", "perl", "php", "ecmascript", "c"]
ary[0..2]             # => ["ruby", "python", "perl"]
ary[-3..-1]           # => ["php", "ecmascript", "c"]
ary[2,3]              # => ["perl", "php", "ecmascript"]

  # can replace a range of indexes with elements from an array (size doesn't need to match)
ary                   # => ["ruby", "python", "perl", "php", "ecmascript", "c"]
ary[1..2] = [9,8,7,6,5,4,3,2,1]
ary                   # => ["ruby", 9, 8, 7, 6, 5, 4, 3, 2, 1, "php", "ecmascript", "c"]


ary = Array(0..10)    # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ary.insert(5,'five')
ary                   # => [0, 1, 2, 3, 4, "five", 5, 6, 7, 8, 9, 10]


# =====  Sorting  =====
before = [3,6,3,0,8,235,-3]
after  = before.sort
before       # => [3, 6, 3, 0, 8, 235, -3]
after        # => [-3, 0, 3, 3, 6, 8, 235]

  # a bang on the end of a method means "watch out", many methods have a "safe" version which will return a new object
  # and a "dangerous" version, which will mutate the current object. (this is not it's only use, so check the docs ;)
before       # => [3, 6, 3, 0, 8, 235, -3]
before.sort!
before       # => [-3, 0, 3, 3, 6, 8, 235]

  # you can sort based on your own criteria, your block must simply evaluate to -1 , 0 , or 1
  # This is the same as Java's compareTo method. We have a method like that already, our spaceship operator
  # if this example is too confusing, let me know (or if it's cake, you can brag)
after = before.sort do |a,b|
  b <=> a   # sort such that larger elements come first
end
before # => [-3, 0, 3, 3, 6, 8, 235]
after  # => [235, 8, 6, 3, 3, 0, -3]

  # An object with a name and age
class Person
  attr_accessor 'name', 'age'
  def initialize(name, age)
    @name, @age = name, age
  end
  def inspect
    "<#{name}(#{age})>"
  end
end

  # whatever the block returns will be used to sort the object
people = [
  Person.new( 'Ernie'    , 20 ),
  Person.new( 'Sara'     , 50 ),
  Person.new( 'Monique'  , 10 ),
  Person.new( 'Mohammed' , 60 ),
]
people.sort_by { |person| person.age } # => [<Monique(10)>, <Ernie(20)>, <Sara(50)>, <Mohammed(60)>]



# =====  Adding / removing / replacing / finding elements  =====

  # appending / pushing / popping  (never have to write a stack again)
ary = [1,2,3]
ary << 4
ary             # => [1, 2, 3, 4]
ary.push 5
ary             # => [1, 2, 3, 4, 5]
ary.pop         # => 5
ary             # => [1, 2, 3, 4]

  # if you want to push / pop from the beginning, it's called unshifting and shifting
  # to help you remember which is which, it might help to associate shift with the assembly command shl
ary = [1,2,3]
ary.unshift 0
ary             # => [0, 1, 2, 3]
ary.shift       # => 0
ary             # => [1, 2, 3]

  # removing items
ary = Array(1..10)             # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ary.delete 5
ary                            # => [1, 2, 3, 4, 6, 7, 8, 9, 10]

ary = Array(1..10)             # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ary.reject { |i| i % 2 == 0 }  # => [1, 3, 5, 7, 9]
ary.select { |i| i % 2 == 0 }  # => [2, 4, 6, 8, 10]

  # checking for an object
ary = Array(3..10)    # => [3, 4, 5, 6, 7, 8, 9, 10]
ary.include?(5)       # => true
ary.index(5)          # => 2
ary.include?(11)      # => false
ary.index(11)         # => nil


# =====  Iterating  =====

  # iterate over each element
sum , ary = 0 , [1,2,3]
ary.each { |num| sum += num }
sum       # => 6

  # iterating over each index , capture results in a new Array
results = Array.new
%w(a b c).each_index { |i| results.push i }
results   # => [0, 1, 2]

  # what if you care about both elements and indexes?
results = Array.new
%w(a b c).each_with_index do |character,index|
  results.push "index #{index} holds element #{character}"
end
results   # => ["index 0 holds element a", "index 1 holds element b", "index 2 holds element c"]

  # create a new array, where each element is derived from the original array
  # whatever the block returns (its last line) will be at that index in the new array
ary = [0,1,1,1,1,3]
ary.map { |num| num * 2 }                       # => [0, 2, 2, 2, 2, 6]
ary.map { |num| %w(zero one two three)[num] }   # => ["zero", "one", "one", "one", "one", "three"]

  # iterate over multiple elements
result = []
Array(1..10).each_slice(2) { |a, b| result << [a, b] }
result # => [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]

result = []
Array(1..10).each_cons(2) { |a, b| result << [a, b] }
result # => [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8], [8, 9], [9, 10]]

# ===== Miscellaneous useful shit  =====
  # equality
[1,2,3] == [1,2,3]              # => true
[1,2,3] == [3,2,1]              # => false

  # repetition
[1,22] * 3                      # => [1, 22, 1, 22, 1, 22]

  # concatenation
[1,2] + %w(3 4)                 # => [1, 2, "3", "4"]

  # difference
[1,2,3,4] - [3,5]               # => [1, 2, 4]

  # max and min
[3, 4, 13, 2, -3, 7].max        # => 13
[3, 4, 13, 2, -3, 7].min        # => -3

  # intersection
[1,3,4] & [0,3,4,5]             # => [3, 4]

  # union (order is not guaranteed)
[1,3,4] | [0,3,4,5]             # => [1, 3, 4, 0, 5]

  # convert each element to a string, and join them together
[1,2,3].join(' and ')           # => "1 and 2 and 3"

  # length / size  (get tired of trying to remember which is correct? In Ruby, they both are ^_^)
[1,2,3].length                  # => 3
[1,2,3].size                    # => 3

  # reverse
[1,2,3].reverse                 # => [3, 2, 1]

  # transpose
a = [1,2,3]
b = %w(one two three)
[ a , b ].transpose             # => [[1, "one"], [2, "two"], [3, "three"]]
a.zip b                         # => [[1, "one"], [2, "two"], [3, "three"]]

  # assigning to variables
a = [1,2,3]
num1 , num2 , num3 = a
num1                            # => 1
num2                            # => 2
num3                            # => 3

  # "removing" the brackets to feed as arguments
def sum( x , y , z )
  x + y + z
end
a = [1,2,3]
sum(*a)                         # => 6


OTHER STUFF

# Difference between consequtive elements
[1, 3, 7].each_cons(2).map {|a, b| b - a }  #=> [2, 4]

HASHES 

# http://ruby-doc.org/core/classes/Hash.html


# =====  Initializing  =====
# populated
{ 1 => 'one' , 2 => 'two' } # => {1=>"one", 2=>"two"}
Hash[ 1,'one' , 2,'two' ]   # => {1=>"one", 2=>"two"}

# empty
{}                          # => {}
Hash.new                    # => {}


# =====  Nonexistent Keys  =====
# by default, nonexistent keys return nil
hash = Hash.new   # => {}
hash[:josh]       # => nil

# to change this behaviour, you can pass new a block that receives the hash and the nonexistent key
# and then adds it to the hash in the way that you would like
aliases = Hash.new { |this_hash, key| this_hash[key] = Array.new }
aliases         # => {}
aliases[:josh]  # => []
aliases         # => {:josh=>[]}
aliases[:jeff] << 'the dude' << 'his dudeness' << 'duder' << 'el duderino'
aliases         # => {:josh=>[], :jeff=>["the dude", "his dudeness", "duder", "el duderino"]}


# =====  Access and Assign  =====
# generally access and assign like ths
hash = Hash.new
hash                          # => {}
hash["my key"] = "my value"
hash                          # => {"my key"=>"my value"}
hash["my key"]                # => "my value"

# access multiple values at once
hash = Hash[ *[ Array('a'..'j') , Array(1..10) ].transpose.flatten ] # just populating
hash                                  # => {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10}
hash.values_at 'j' , 'e' , 'i' , :x   # => [10, 5, 9, nil]

# more interesting options with fetch (think how this might be helpful in param default values)
hash = { "a" => 100, "b" => 200 }
hash.fetch "a"                              # => 100
hash.fetch "z" , "go fish"                  # => "go fish"
hash.fetch("z") { |el| "go fish, #{el}"}    # => "go fish, z"

# sometimes you might use has_key to check for a key, for example, if you're using an init block
hash = Hash.new { true }
hash[:a] = :b
hash[1000]                                  # => true
hash.has_key? 1000                          # => false

hash = { 12 => nil }
hash[12]                                    # => nil
hash[13]                                    # => nil
hash.has_key? 12                            # => true
hash.has_key? 13                            # => false

# and the converse
hash = { "a" => 100, "b" => 200 }
hash.has_value?(100)                        # => true
hash.has_value?(999)                        # => false


# =====  Removal  =====
# delete accepts a key and returns its value. You can give a block that will be invoked and returned
# in the event that the keyt o delete was not seen
hash = Hash[*Array(1..10)]                  # => {1=>2, 3=>4, 5=>6, 7=>8, 9=>10}
hash.delete 1                               # => 2
hash.delete 100                             # => nil
hash                                        # => {3=>4, 5=>6, 7=>8, 9=>10}
hash.delete(3)   { |n| "#{n} not found" }   # => 4
hash.delete(100) { |n| "#{n} not found" }   # => "100 not found"

# delete_if to remove all pairs from a hash
# that cause the block to evaluate to true
hash = Hash[*Array(1..10)]                  # => {1=>2, 3=>4, 5=>6, 7=>8, 9=>10}
hash.delete_if do |key,value|
  key % 5 == 0 || value % 5 == 0
end
hash                                        # => {1=>2, 3=>4, 7=>8}


# =====  Iterating  =====
# pass a block that receives the key and the value
cities = { :Chicago => :USA , :Paris => :France , :Ramstein => :Germany }
results = Array.new
cities.each do |city,country|
  results << "#{city} is in #{country}"
end
results # => ["Chicago is in USA", "Paris is in France", "Ramstein is in Germany"]


# =====  Other Useful Methods  =====

# there is also a self mutator version: merge!
defaults = { :color => :red , :city => 'Wichita' }
custom   = { :city => 'Boston' }
merged   = defaults.merge custom
defaults                      # => {:color=>:red, :city=>"Wichita"}
custom                        # => {:city=>"Boston"}
merged                        # => {:color=>:red, :city=>"Boston"}

cities = { :Chicago => :USA , :Paris => :France , :Ramstein => :Germany }
cities.keys                   # => [:Chicago, :Paris, :Ramstein]
cities.values                 # => [:USA, :France, :Germany]
cities.length                 # => 3
cities.size                   # => 3
cities.empty?                 # => false
Hash.new.empty?               # => true


hash = Hash[*Array(1..10)]
hash                          # => {1=>2, 3=>4, 5=>6, 7=>8, 9=>10}
hash.clear
hash                          # => {}

# get a key for a given value (remember, there could be more than one key with the same value)
hash = { "a" => 100, "b" => 200 }
hash.index(200)               # => "b" # !> Hash#index is deprecated; use Hash#key
hash.index(999)               # => nil # !> Hash#index is deprecated; use Hash#key

# swap keys with values
hash = { :n => 1, :m => 1, :o => 2 }  # n and m have the same value, n ends up getting squashed
hash.invert                   # => {1=>:m, 2=>:o}

# convert to an array
{ :Chicago => :USA , :Paris => :France , :Ramstein => :Germany }.to_a # => [[:Chicago, :USA], [:Paris, :France], [:Ramstein, :Germany]]
