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

#
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


# 1. create a new class called User
# 2. initialize it with 1 arugment called username - create instance variable
# 3. define a method called add_blog, with two arguments, date and text
# 4. define a method called blogs, returns all blogs user's have written, in to an array
# the latest one should be first
# 
# 1. create another class called Blog
# 2. create getter and setter methods for text, date, user (attr_accessor)
# 3. initialize it with 3 arguments, date, user, text - create instance variable
# 4. create a method called summary to return the first 10 words

require 'date' #this loads both the Date and DateTime classes from the Ruby library.

class User #create new class
  
  attr_accessor :username, :blogs #allow read and write access
  #use symbols instead of strings because they can never change, like numbers
  #if you use one, it will last until your program ends
  #a symbol always has the same value
  #attr_accessor writes the setter and the getter methods with instance variables
  #of the same name

	def initialize(username)#initialize new objects with thee value 'username'
		#which is stored in the instance variable @username
		self.username = username #self.username calls the setter method 'username', on self
		#self refers to the User object where the defined method is taken from.
		#the .username method was created by attr_accessor
		self.blogs = [] #calls the User class method 'blogs=', 
		#setting an empty array value to the instance variable @blogs in the 
		#setter method created by attr_accessor.
	end

  def add_blog(date, text)#creates a method that can be called on the class' object
    added_blog = Blog.new(date, self, text) #create a new Blog class object
    #with the date and time taken from this method's argument, and the same
    #value 'self' from the user value initialized with in the Blog class
    #Blog.new needs three arguments (see class Blog initialize method below)
    #This new blog object with add_blog's date and text, is stored in the variable
    #added_blog, so we can use it.
    blogs << added_blog #as there is no 'blogs' local variable set here,
    #just putting 'blogs' points to the method 'blogs' found the class 
    #(the getter method, set up by attr_accessor). If there was a local variable
    #named 'blogs', then self.blogs will need to be used to explicitly call 
    #the method. So blogs << added_blog pushes the new blog post to the array
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse #you have to use self
    #here otherwise blogs = etc would be indistinguishable from creating a new
    #local variable here and storing the sorted blogs array in it.
    #self.blogs = is calling the  METHOD blogs= (from attr_accessor), which
    #uses the argument as the new instance variable value (@blogs is now the sorted array)
    added_blog #returns the newly added blog
  end

end

class Blog

	attr_accessor :date, :user, :text #creates getter and setter methods

	def initialize(date, user, text) #assigns instance variables with these values
	  @date = date
	  @user = user
	  @text = text
	end

	def summary
		text.split[0..9].join(" ") #splits the text into an array (first 10 words)
		#then joins them back together as a string with a space inbetween
	end

	def entry
		"#{user.username} #{date}\n#{text}" #prints out the string using .entry
	end #the .username method is called on the user object (from getter method)
	#e.g. lissa was set as the user, so the user takes the username from User class.

# Two blogs should be equal to eachother if they have the same user, date, and text
	def ==(other)
		self.date == other.date && self.user == other.user && self.text == other.text
	end #redefines the equal-to operator 
	#returns true if self (current blog) is equal to other, false otherwise.
	#can be called like blog5 == blog4 (returns true or false)
end




