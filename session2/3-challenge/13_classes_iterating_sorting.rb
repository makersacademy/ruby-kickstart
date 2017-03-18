# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# In this exercise you'll need to create two classes.

# One class is called User that keeps track of a person's username
# it should receive the username when initialized
# it should have a method add_blog which accepts a date and text
# it should have a method blogs which returns an array of all blogs the user has written
# they should be in reverse chronological order (newest first)
#
# The other class is called Blog that could be used to store an entry for your web log.
# The class should have a getter and setter methods: text , date , user
# its initialize method should receive the date, user , and text
# have a method called summary that returns the first 10 words from the text (or the entire text if it is less than 10 words)
#
# Two blogs should be equal to eachother if they have the same user, date, and text
# here is a partially filled out example of how to define the == operator:
#      def ==(other)
#        return self.date == other.date
#      end



# ==========  EXAMPLE  ==========
#
# lissa = User.new 'QTSort'
# lissa.username                  # => "QTSort"
# lissa.blogs                     # => []
#
# lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
# lissa.blogs                     # => [#<Blog:0x007fec28c49b88
#     @date=#<Date: 2010-05-28 ((2455345j,0s,0n),+0s,2299161j)>,
#     @text="Sailor Mars is my favourite",
#       @user=#<User:0x007fec2902e5c8 @blogs=[...], @username="QTSort">>] 
#
# blog1 = lissa.blogs.first
# blog1.user                      # => lissa
#
# Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"                                    # we'll call this blog2
# Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"              # we'll call this blog3
# Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best ^_^"   # we'll call this blog4
# lissa.blogs                     # => [ blog1 , blog4 , blog2 , blog3 ] this is
# not how it will actually appear. Please see lines 28-32 for how unnamed blog objects will
# appear.
#
# blog5 = Blog.new Date.today, lissa, <<BLOG_ENTRY
# Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
# Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
# eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
# porta lectus.
# BLOG_ENTRY
#
# blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# blog5.entry         # => QTSort 2010-05-28
#                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#                          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#                          eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#                          porta lectus.
#
# blog5.date = Date.parse('2009-01-02')
# blog5.user = User.new 'disloyalist.party'
# blog5.text = "From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original\n" \
#              "I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,\n" \
#              "All my labor will be lost with time"
#
# blog5.entry      # => disloyalist.party 2009-01-02
#                       From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original
#                       I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,
#                       All my labor will be lost with time



# date docs are at: http://ruby-doc.org/core/classes/Date.html
# don't spend too much time worrying about them :)
require 'date'

class User
  attr_accessor :username, :blogs #Defining of class called User and setting up the setter and getter for username and blogs. attr_accessor is used to make variables boths readable and writeable at the same time.

  def initialize(username) # Method initialiaze is define with username parameter
    self.username = username # username is assigned to self, which in this case is User class object
    self.blogs    = [] # User blogs is assigned to an array
  end

  def add_blog(date, text) # Method add_blog is defined, which accept two parameters: date and text
    added_blog = Blog.new(date, self, text) # New instance of the class Blog is defined which accepts three parameters: date, self and text
    blogs << added_blog # Adding of the added_blog instance to the end of the blogs array
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse #Interation through the blogs array which sorts the elements by date but in reversed order ans assign it to the User blogs
    added_blog # calls added_blog
  end
end



class Blog # Defining of Blog class and setting up three getter and setter for date, user and text.
  attr_accessor :date, :user, :text

  def initialize(date, user, text) # Method initialize is defined which accept three parameters: date, user and text
    self.date = date #
    self.user = user # Assigning of all received arguments for date, user and
    self.text = text # text to self object which in this case is Blog class
  end

  def summary # summary method is defined
    text.split[0..9].join(' ') # text is splitted into array including 10 elements (index positions from 0 to 9) so only 10 first words in text are taken. Then they are joined together with the spaces between them.
  end

  def entry # entry method is defined which return a string including username, date and text
    "#{user.username} #{date}\n#{text}"
  end

  def ==(other) # Defining of == operators which makes sure that array stays the same when blogs has the same date, user and text as the one already included.
    date   == other.date &&
      user == other.user &&
      text == other.text
  end
end
