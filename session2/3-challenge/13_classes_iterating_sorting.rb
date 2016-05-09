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

require 'date'
#This is a program that is downloaded from Ruby that will convert your date
#into a specific format. When inserting date below, it should be written
#in the format: Date.parse("2010-05-28").

class User 
#this is setting up a new class called User
  attr_accessor :username, :blogs 
  #this creates the read and write getter 
  #and setter methods that enable us to access the data defined in the 
  #instance variable and change the information if required. 

  def initialize(username)
    self.username = username
    self.blogs    = []
  end
  #this initialize method sets the default instance variables which will be
  #passed to the object that is created when typing User.new. They are 
  #instance variables that only exist within the instance of the class 
  #(i.e. the object we create). self.username is just another way or writing
  # @username and self is dependant on where it is declared. In this example,
  # self is the initialized object (lissa). 

  def add_blog(date, text)
    added_blog = Blog.new(date, self, text)
    blogs << added_blog
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse
    added_blog
  end

  #this method askes us to pass a date and some text for the blog. 
  #it creates a new Blog object passing it the date and text passed
  #in the method call, and then asigns this new Blog to a local variable
  #called added_blog. This is then appended to the instance variable blogs
  #(and added to the array). The value of the added_blog variable is then
  #returned. 
end



class Blog
  attr_accessor :date, :user, :text

  #new Class called Blog with getter and setter methods added
  #for date, user and text. 
  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end
  #initialize method for provide default data to the newly created object
  #the date, user and text are added to instance variabes. 
  def summary
    text.split[0..9].join(' ')
  end
  #this method splits the text and passed the first 10 indices to be
  #joined again at the space, to provide a summary for the blog. 

  def entry
    "#{user.username} #{date}\n#{text}"
  end
  #this method just provides a mechanism to return the basic data for
  #the blog entry.

  def ==(other)
    date   == other.date &&
      user == other.user &&
      text == other.text
  end
  #this checks whether the contents of one blog are equal to the contents
  #of another
end

