# For historical reasons, text in programming languages, is called a "string"
# think of it like you're stringing characters along a clothesline
# question: if 10.to_f converts 10 to a float, how would you convert 10 to a string?

"text".class # => String

#Sergio: Interesting use of .class to get the class of an object, for. eg.
a = Object.new
#  => #<Object:0x00000002544a50> 
a.class
#  => Object

# You can identify strings because they are surrounded in quotes

"abc" # => "abc"
'abc' # => "abc"

# Sergio : Mostly not difference between " and ', can be used to switch to one or other if we are using them on the string i.e.
"using double quotes because 'single quote' is used in the string"
'using single quotes becaues "double quotes" are used in the string'

double = "using double quotes because 'single quote' is used in the string"
#  => "using double quotes because 'single quote' is used in the string" 
single = 'using single quotes becaues "double quotes" are used in the string'
# => "using single quotes becaues \"double quotes\" are used in the string"
# (note the escape characters)




