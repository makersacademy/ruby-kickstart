# This is the same as 4:6 but now we want to make this more comprehensive

# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solution, try to understand the code, then close the file, come back here, and try again to solve it.

# There are a few nuances, though.
# The String you return must be retained during the object's entire life
# The method must be able to be called multiple times
# The String you return should know how to add new CSS classes: each class is separated by a space
# If someone tries to use + or []= or * on the String, you should raise a RuntimeError
# with a message of "use << method instead"
# If they try to add the same String more than once, you should simply do nothing
#
# 0------------------------------
#
# EXAMPLE:
#   controller = ApplicationController.new
#   controller.body_class                 # => ""
#   controller.body_class << 'admin'
#   controller.body_class                 # => "admin"
#   controller.body_class << 'category'
#   controller.body_class                 # => "admin category"
#   controller.body_class << 'page' << 'order'
#   controller.body_class                 # => "admin category page order"
#   controller.body_class << 'category'
#   controller.body_class                 # => "admin category page order"
#   controller.body_class + 'landing'     # => #<RuntimeError: use << method instead>
#

class ApplicationController

  def body_class
    return @body_class if @body_class
    @body_class = String.new

    def @body_class.<<(str)
      return self if self[/\b#{str}\b/]
      concat ' ' if length != 0
      concat str
    end

    def @body_class.+(str)
      raise_exception
    end

    def @body_class.[]=(x, y)
      raise_exception
    end

    def @body_class.*(str)
      raise_exception
    end

    def @body_class.raise_exception
      raise RuntimeError.new("use << method instead")
    end

    @body_class

  end


end
