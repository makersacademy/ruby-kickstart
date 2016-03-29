# was stumped getting my head around doing this initially. Decided
# the best route was to look at the solution, but heavily comment
# on each stage, which has really helped me clarify the concepts
# of classes and instantiation

require 'date'

#define a class called user
class User
  def initialize(username)
    self.username = username
    self.blogs = []
    # the array of blogs for this particular user. so the objects going in here
    # are of the class Blog. And this array will only be accessible from
    # within the scope of the particular User. So - need to write and
    # attr_accessor for this array too.
  end

  attr_accessor :username, :blogs
  # this writes methods to allow our instance variables to be accessed and
  # written to from outside the class. We are using symbols as these are the names
  # passed to the attr_accessor, which then sets our two access/write methods, naming them based on these sybols

  def add_blog(date, text) # this method should accept date and text and store it in an array.
    # So I guess two objects - the date and then the blog object.
    # So, it needs to instantiate a blog object, which in turn
    # will create variables at its instantiation (initialize).
    added_blog = Blog.new(date, self, text)
    blogs << added_blog
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse #investigate if self needs to be specified. calling blogs will surely default to a call on self
    added_blog
  end
end

class Blog # this should return an ARRAY of all blogs the user has written, newest first
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date = date #be explicit in our call to set an instance variable, so it's not mistaken for a local variable
    self.user = user
    self.text = text #so these three are passed in from the add_blog method, which is called on user.
  end

  def summary
    text.split[0..9].join(' ')
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  # the following I don't get. It's a method to determine if
  # an entry is equivalent to another.

  def ==(other)
    date == other.date &&
    user == other.user &&
    text == other.text
  end

end



# things to play with / break
# 1. try taking out the : from the attr_accessors DONE
# 2. change position within classes of the attr_accessors DONE
# 3 take out self. as object on method calls. Is this to do with what Josh was saying in the video section THIS WILL TRIP YOU UP? DONE
# 4 investigate = why no ampersands in instance variable settings? DONE
