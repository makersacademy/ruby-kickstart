# All the variables we've seen so far have been local variables.
# That means they exist within the current scope, but if we leave it, they go away.
# Local variables begin with a lowercase letter, and can then be followed by alphanumeric values and underscores
# Use snake_case with variables
local_variable = nil

# Constants are like variables, but you're telling the world that the value should not change.
# GM - new: Any variable that starts with a capital letter is a constant.
# Use CamelCase with constants.
# GM - Ruby will not expect you to change a variable whose name starts with a capital letter. Nor will users. You could if you wanted, though.
Constant = nil


# Instance variables are variables that belong to an object rather than a scope.
# Any variable that starts with an '@' sigil is an instance variable.
# We'll talk more about these later.
@instance_variable = nil


# Remember when I said methods were their own little worlds? I lied.
# Constants can be seen by anything defined in their scope.
# GM - intresting to note that local variables can't be seen within methods - see below.
# GM - also, see the use of rescue => exception below - the begin block is trying to break because it can't find my_variable, but rescue => exception is saying ' rather than breaking, tell me WHY you wanted to break. So it shows the relevant error.

MyConstant  = 12
my_variable = 13
def example
  begin
    MyConstant        # => 12
    my_variable       # =>
  rescue => exception
    exception         # => #<NameError: undefined local variable or method `my_variable' for main:Object>
  end
end

example # invokes the method


# Question: classes begin with uppercase letters, are they constants?
# GM - answer is YES!
#   Remember, constants are just variables that aren't supposed to change.
#   go test this in irb

