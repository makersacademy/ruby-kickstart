# There are some special methods called operators.
# They are special because the Ruby interpreter lets you use them in pretty ways, even though they are just methods.
# That's called syntactic sugar!

# there is a method named +
3.+(5)        # => 8

# but that's ugly, *ick*, Ruby is beautiful, so it lets you say
3 + 5         # => 8
2 - 4         # => -2
10 / 3        # => 3
10 % 3        # => 1

# See, it knows what to do :)
# (% tells you the remainder)

# Ruby wants to help you, but syntactic sugar wouldn't be much help
# if it changed the semantics of math, so Ruby respects order of operations,
# which is a stardard order for calculations involving more than one arithmetic
# operation. Rule 1 is perform any calculations inside parentheses.
# Rule two is next perform all multiplications and divisions, working from left to right
# Rule three is lastly perform all additions and subtractions, working from left to right

2 * 3 + 10   # => 16
2 + 3 * 10   # => 32

# Question: If operators are just methods on objects, can other objects have operators?
# Lets open up irb and try it out!

