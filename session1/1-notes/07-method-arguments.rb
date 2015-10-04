# You know how you and I can go to the same website, but even though we both see it in our browser,
# is there only one website?
#
# Objects are the same way, when you pass one in, you can access it from the variable outside
# and inside the method, but there is still just one object.

def browser_goto(website)
  website.object_id     # => 2151945040, 2151945040
  "Direct your browser towards #{website}"
end

# the same object id means they are the same object
website = "ruby-kickstart.com"
website.object_id       # => 2151945040
browser_goto(website)   # => "Direct your browser towards ruby-kickstart.com"

# When we defined the variable website, it has it's own object ID. When we then call browser_goto(website), i.e. with
# it's argument pointing to the same website object, it will share the same object ID.
# Further example:
def browser_goto(website)
  p website.object_id  
  "Direct your browser towards #{website}"
end

# The arument "website" has it's own object ID.
browser_goto("website") # > 18077380

website = "ruby-kickstart.com"
# The variable "ruby-kickstart.com" also has it's own object ID.
p website.object_id       # => 18077240
# The method browser_goto, taking "ruby-kickstart.com" as it's argument, points to the same object ID as the variable
# website, because the same object is essentially being used.
browser_goto(website)   # => 18077240


# Ruby likes to be beautiful, it doesn't make you put parentheses where it can figure out what you meant.
browser_goto website    # => "Direct your browser towards ruby-kickstart.com"

