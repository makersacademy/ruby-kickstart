require 'date'

class User
  attr_accessor :username, :blogs
  #
  # Creates get and set methods for @username variable
  # Creates get and set methods for @blogs variable
  # Note attr_accessor sets these variables as GLOBAL
  # variables, allowing them to be used anywhere else
  # in the program.

  def initialize(username)
  # Creates an instance of User class that takes one
  # argument, i.e. whatever username we pass in when
  # calling this method.
  #
    self.username = username
  #
  # Calls the set username method on the self object and
  # sets username for the self object to the username
  # supplied when we create the new user.
  #
    self.blogs = []
  # Calls the set blog method on the self object and sets
  # the blogs for the self object to an empty array.
  #
  # A NOTE TO SELF ON SELF
  #
  # self is a keyword that identifies the current object.
  # At every point when your program is running there's one
  # and only ever one one self.
  #
  # As initialize is a method instance of the class User,
  # we say it is a "class method" for User.  The self
  # for a class method is the class object.
  #
  # The class object here is the new user that we create
  # when we do the following:
  #
  # => alistair = User.new("awye765")
  # => #<User:0x007fbf78a47d80 @blogs=[], @username="awye765">
  #
  # This creates a new user object with the object ID
  # #<User:0x007fbf78a47d80, sets @blogs to an empty array
  # and sets @username to "awye765" (i.e. the username we
  # supplied when doing User.new("awye765")).
  #
  # So in the above the username set method is being called
  # on the current user object, which would be alistair in the
  # above example.  Likewise for sef.blogs = [].
  #
  end

  def add_blog(date, text)
  #
  # Creates add_blog method.  Takes two arguments: date
  # and text.  So, if you've created a user you can call
  # this method on that user to add a blog for that user.
  #
    added_blog = Blog.new(date, self, text)
  #
  # Initializes a new object of the Blog class and passes
  # in the following arguments:
  # (1) a date (the one already passed into add_blog);
  # (2) self, which is the current object at this point in
  #     the program, i.e. the current User object, which is
  #     <User:0x007fbf78a47d80>, i.e. alistair;
  # (3) a string (the one already passed into add_blog)
  #
  # The resulting return value is a new Blog object, which
  # is assigned to the new addded_blog variable.
  #
  # EXAMPLE
  #
  # First we call add_blog on the user
  # => alistair.add_blog("1999-01-01", "Test 1")
  #
  # Second, to run add_blog on the user, Ruby must
  # dive into the Blog class and create a new Blog
  # object for that user using the arguments passed in
  # by add_blog, i.e. date, self (the user obj, in this
  # case the user obj alistair) and text.  That Blog
  # object will be as follows
  #
  # => <Blog:0x007fbf79122240
  #    @date="1999-01-01",
  #     @text="Test 1",
  #     @user=
  #       <User:0x007fbf78a47d80 @blogs=[#<
  #       Blog:0x007fbf79122240
  #       ...>], @username="awye765">>
  #
  # Third ruby dives back into the add_blog method and returns
  # the resulting Blog object (the one above), which is
  # assigned to the new variable added_blog.
  #
    blogs << added_blog
  #
  # Updates the @blogs variable with the value of the
  # added_blog.  In other words, the @blogs variable has
  # the new Blog object added to its array.
  #
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse
  #
  # This sorts the blogs array by date, which defaults to a
  # chronological order (oldest date first).  The .reverse
  # reverses the order so the array is most recent date first.
  # The resulting array is then assigned to the blogs variable
  # for the current object, i.e. the current user, "awye765"
  #
  # EXAMPLE
  #
  # This:
  # <Blog:0x007fbf79122240
  #    @date="1999-01-01",
  #     @text="Test 1",
  #     @user=
  #       <User:0x007fbf78a47d80 @blogs=[#<
  #       Blog:0x007fbf79122240
  #       ...>], @username="awye765">>
  #
  # ... becomes this array:
  #
  # [<Blog:0x007fbf79122240, @date="1999-01-01",
  # @text="Test 1", @user=<User:0x007fbf78a47d80 @blogs=[#<
  # Blog:0x007fbf79122240...>], @username="awye765">>]
  #
  # ... which gets assigned to self.blogs, i.e. the blogs
  # variable for the current User object, alistair.
  #
    added_blog
  # returns value of added_blog (i.e. the non-array version)
  #
  end

end

class Blog
  attr_accessor :date, :user, :text
  # Creates get and set methods for date, user and text
  # global variables.

  def initialize(date, user, text)
  # Creates a new instance of the Blog class with given values
  # for date, user and text.
    self.date = date
    self.user = user
    self.text = text
  #
  # If we have a user and call the add_blog method on the user
  # the add_blog method will pass in the date, user and text
  # values.  The date and text values are chosen when we call
  # add_method on the user object and the user value is preset
  # by the add_method as the current User object (see above
  # example).
  #
  # In all other circumstances if we create a new blog post
  # by creating a new Blog object (without calling add-blog on
  # an existing user) we will have to manually pass in all
  # three arguments: date, user and text.
  #
  # Example
  #
  # => blog2 = Blog.new("2000-01-01", alistair, "Test 2")
  # => #<Blog:0x007fbf7895ab48
  #     @date="2000-01-01",
  #     @text="Test 2",
  #     @user=
  #     <User:0x007fbf78a47d80
  #       @blogs=
  #         [#<Blog:0x007fbf79122240
  #         @date="1999-01-01",
  #         @text="Test 1",
  #         @user=#<User:0x007fbf78a47d80 ...>>],
  #       @username="awye765">>
  #
  # This creates a new Blog object with ID
  # #<Blog:0x007fbf7895ab48, @date="2000-01-01",
  # @text="Test 2", and @user set to the value of the
  # User object #<Blog:0x007fbf79122240, i.e. the alistair
  # user object.  As you can see, doing that means @user for
  # the new Blog object includes the other info for that
  # same user, i.e. the username and the @blogs array, which
  # itself will include any pre-existing blogs created either
  # initially by the add_blog method or by creating a new Blog
  # object.
  end

  def summary
  # Creates a summary of the value stored in the @text variable
  # that only includes the first 10 words
    @text.split[0...10].join(' ')
  # Takes the @text value from the relevant blog entry and
  # splits the the first ten words

  end

  def entry
    "#{user.username} #{date}\n#{text}"
  # Returns a string of the username, date and text for
  # a particular blog post.
  #
  # Example
  #
  # => blog2.entry
  # => "awye765 2000-01-01\nTest 2"
  #
  # Note the \n means that if you wrote puts blog2.entry it
  # would print the username and date on one line and the text
  # on a new line.  Anything after the \n gets printed to a new
  # line, e.g.
  # => puts blog2.entry
  # => awye765 2000-01-01
  # => Test 2
  #
  end

  def ==(other)
    date == other.date &&
    user == other.user &&
    text == other.text
  # Straightforward - compares the values of one blog versus
  # another.
  #
  # Example
  #
  # => blog1 ==(blog2)
  # => false
  #
  end
end