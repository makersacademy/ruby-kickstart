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

<<<<<<< HEAD
#Getting the hang of it! But still had to refer to solution - mainly need to understand the 'self' definition
require 'date'

class User
  attr_accessor :username, :blogs #forgot to add blogs up here!
  
  def initialize(username)
    self.username = username
    self.blogs = [] #blogs will return an array
  end
  
  def add_blog(date, text)
    #had help with the following (thank you, solution :( )
    added_blog = Blog.new(date, self, text) #added_blog takes all the methods and date and text entries from the Blog class
    blogs << added_blog #everything from added_blog gets given to blogs
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse #sorts blogs into chronological order, then reverses that order
    puts added_blog #calls added_blog defined in top line
  end

end

class Blog
  attr_accessor :text, :date, :user
  
  def initialize(text, date, user)
    self.text = text
    self.date = date
    self.user = user
  end
  
  def summary(text)
    #returns first 10 words of from the text (or entire text if blog entry is less than 10 words)
    first_ten_words_array = text.split[0..9]
    first_ten_words = first_ten_words_array.join(' ')
    puts first_ten_words
  end

  def entry
  #also referred to the solution here...!
    "#{user.username} #{date}\n#{text}" #outputs the user's username, the date of the blog and the blog text as a string
  end

  def ==(other)
  #says that two blogs are equal to each other if they satisfy the following:
    date == other.date && #the dates are the same
    user == other.user && # the usernames are the same
    text == other.text # the text is the same
  end
end

# ==========  EXAMPLE  ==========
#
lissa = User.new 'QTSort'
lissa.username                  # => "QTSort"
lissa.blogs                     # => []

lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my avourite"
lissa.blogs                     # => [ blog1 ]

blog1 = lissa.blogs.first
blog1.user                      # => lissa

Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"                                    # we'll call this blog2
Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"              # we'll call this blog3
Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best ^_^"   # we'll call this blog4
lissa.blogs                     # => [ blog1 , blog4 , blog2 , blog3 ]

=======


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
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
# blog5 = Blog.new Date.today, lissa, <<BLOG_ENTRY
# Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
# Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
# eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
# porta lectus.
# BLOG_ENTRY
<<<<<<< HEAD

# blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# blog5.entry         # => QTSort 2010-05-28
#                          Lorem ipsum dolor sit amet, consectetur #adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#                          Cum sociis natoque penatibus et magnis #dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#                          eget eros bibendum justo congue auctor #non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#                          porta lectus.

=======
#
# blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# blog5.entry         # => QTSort 2010-05-28
#                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#                          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#                          eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#                          porta lectus.
#
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
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
