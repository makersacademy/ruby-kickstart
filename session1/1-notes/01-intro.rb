#Watch this video - https://vimeo.com/24093428 - these notes are in support of the video. 

#Try to keep up, have the notes open and ADD YOUR OWN NOTES TO IT TO HELP CLARIFY EVERYTHING FOR YOURSELF.

#At the end, you can always clean up your notes and make a pull request if you think that you've made improvements :)

# Origins of the Ruby Language:
#   Written By: Matz (Yukihiro Matsumoto)
#   First Public Release: 1995
#   Ruby is dynamic (interpreted), strongly typed (mostly), dynamically typed (known as duck typing)
#   Paradigms:
#     Procedural
#     OO (except for some operators, _everything_ is an object)
#     Functional

# Why Ruby?
#   It's hot! One of my instructors just sent this to our school's ACM mailing list:
#     % change in job openings from 2010
#     Ruby on Rails        +84%
#     Python               +53%
#     MySQL                +46%
#     PHP                  +43%
#     Ajax                 +37%
#     Linux                +31%
#     Perl                 +25%
#     Apache               +24%
#     Tomcat               +24%
#     Red Hat Linux        +21%
#
#     Source: Dice.com via May 9, 2011 ComputerWorld
#
#   Okay, but what about Ruby not Rails?
#     $ rvm list known
#
#     See MacRuby? I predict Apple moves from Objective C to MacRuby.
#     That means if you want to develop the Mac, you use Ruby, it means
#     iPhone development in Ruby. Remember what happened to Objective C
#     when the iPhone came out? That boost can shift towards Ruby.
#
#     See JRuby? The JVM is awesome, you have that power in Ruby. There
#     are awesome Java libraries. You have that power in Ruby. Native
#     threading in Ruby. Anywhere the JVM is (portability).
#
#   Rubyists are happy. We love to program. We love elegance.
#   We are changing the way others look at software. Ruby on Rails
#   exploded onto the scene because it allowed for incredibly rapid
#   development, it was beautiful and elegant in the face of "spaghetti code"
#   prominent in the web domain, and because it cared enough to do things "right"
#   even when that meant thinking completely outside what had been done before
#   and pushing boundaries.
#
# Think about it, you can conceive of your own problems. And you can solve them.
# You can create anything you can conceive of, like a brilliant architect.
# "Whoever holds the keys to programming ends up building the reality in which the rest of us live."
# -- Douglas Rushkoff


# to see the results of expressions. To show the results of a line, we use the following notation:

3 + 8  #=> 11

my_var = 4
my_var #=> 4

# This shows what that line evaluates to, and in the case of a  line with just a variable on it, shows the
# the value of the objects it refers to.

# Ruby organizes related data, and the ways of manipulating it, into an abstract idea called an object.

# and since five is an object, it also has methods on it

5.even? # => false
5.odd?  # => true
5.next  # => 6

# Variables let us keep track of where our objects are -- so you can access objects through variables.

five = 5  # five is a variable, 5 is the object it is pointing to

# variables can be set to point to new values

five   # => 5
five = 'five'
five   # => 'five'

# The way you modify objects is through a series of instructions called methods.

# For example, there is a set of instructions that know how to capitalize text. We group them into a method
# named capitalize.

"josh".capitalize   # => "Josh"

# You can make methods, too!

def is_this_a_method?
  "Yes, it is!"   #"Yes it is!" is an object. Because this is the last object in the method, its address will
  # be returned
end

is_this_a_method?  # => "Yes, it is!"

# When you make a method, remember that it is its own little world.
# it doesn't know about anything outside of itself, this is called scope.

defined? twelve   # => nil
twelve = 12
defined? twelve   # => "local-variable"

def my_own_little_world
  defined? twelve   # => when we call this method it will return nil cause twelve isn't defined inside
end                 # this method

my_own_little_world   # => nil
defined? twelve       # => "local-variable"  --- only when we called it outside returns 'local-variable' cause
                      # twelve is defined above outside of the method.

# You can pass objects, into the method. Whn we pass an object in, the variable that points to it is called
# an argument or a parameter.

# person1 and person2 are arguments or parameters
def beam_me_up(person1,person2)
  "The away team consists of #{person1} and #{person2}."
end

beam_me_up("Ryker", "Data")   # => "The away team consistes of Ryker and Data."

# You know how you and I can go to the same website, but even though we both see it in our browser, there
# is only one website?
# Objects are the same way, when you pass one in, you can access it from the variable outside and inside the
# method, but there is still just one object.

def browser_goto(website)
  website.object_id   # => 21345640
  "Direct your browser towards #{website}"
end

# the same object id means they aer the same object
website = "ruby-kickstart.com"
website.object_id       # => 21345640
browser_goto(website)   # => "Direct your browser towards ruby-kickstart.com"

# Ruby likes to be beautiful, it doesn't make you put parentheses where it can figure out what you meant.
browser_goto website    # => "Direct your browser towards ruby-kickstart.com"

# There are some special methods called operators.
# They are special because the Ruby interpreter lets you use them in pretty ways, even though they are just
# methods.
# That's called syntactic sugar!

# there is a method named +
3.+(5)    # => 8    -- 3 dot method plus and argument 5

# but that's ugly, so Ruby lets you say
3 + 5     # => 8
2 - 4     # => -2
10 / 3    # => 3
10 % 3    # => 1

# Ruby respects order of operations
2 * 3 + 10   # => 16
2 + 3 * 10   # => 32

# operator is just a method it not just applies to numbers...also strings
"cow" + "chicken"   # => "cowchicken"

# math can't be implemented as purely as is done in the classroom
# this means that while you think of 10 and 10.0 as the same thing, most programming languages don't.



























































































