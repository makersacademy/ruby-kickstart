# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# You need to write a method that will take a person and
# generate their full name. A full name is just a first_name
# and a last_name separated by a space.
#
# Sometimes, though, the code will raise a FirstNameError
# In these cases, just return their last name.
#
# Other times, the code will raise a LastNameError
# In these cases, just return their first name.
#
# And sometimes, it will raise other unexpected errors.
# In these cases, don't do anything, because we don't know
# why that error was raised.

#class FirstNameError < Exception
#end
#class LastNameError < Exception
#end

def full_name (person)

  begin
    full_name = "#{person.first_name} #{person.last_name}"
  rescue FirstNameError => e
    return person.last_name
  rescue LastNameError =>e
    return person.first_name
  end

end
