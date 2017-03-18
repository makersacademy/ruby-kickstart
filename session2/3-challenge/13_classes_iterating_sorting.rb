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

#steps
	#set-up class User - ultimately stores user info and their blogs
	#initialize the user when receives a username
	#method add_blog that takes a date and text to add to a blog
	#method blogs that returns array of all blogs user written in chronological order (newest first)
		# => pulls in an array (where stored?) and sorts (method to make sure most recently added is first 
			#- this may be through how you add blogs e.g. goes at the front with unshift) 
		# => need to think about the .entry variable?
	#think how would do this with a hash? >> just get a working version
	
	#set-up class Blog - ultimately stores entry for web log
	#set up initialize with accessible (getter and setter) methods for text date and user
	#method for summary first 10 words from text or entire text if less than 10 words
		# => method on a string or array which take first x number of words - something like head-10 in command line
			#may also need the else statement for showing whole string
	#set-up a comparison method to map same blogs - if have same user, date and text?

require 'date'

class User
	attr_accessor :username
	def initialize(username)
		@username = username
		@blogs = []
	end

	def add_blog(date, text)
		#check the existing number of blogs
		#bind date and text into an array that then assign a blog number too
		#adds blog and then puts into an array of blog(n)
		#n = @blogs.length + 1	

		@date = date
		@text = text

		#how do you create a counter in a variable for an array? Do you need too?

		@blogs = @blogs.push([@date, @text])
	
		p @blogs
	end

	def blogs
		#just shows the latest array as sorted by blog(n)
		p @blogs.reverse
	end

end

class Blog
	attr_accessor :date, :user, :text 

	def initialize(date, user, text)
		@date = date
		@user = user
		@text = text
	end

	def get_summary
		@summary = @text.split(' ')
		
		@summary.each_with_index do |word, index|
			print "#{word} " if index < 10
		end
	end

	def entry
		puts @user
		puts @date
		puts @text
	end

	def ==(other)
		if self.user == other.user && self.date == other.date && self.text == other.text
			puts "This is the same object"
		end
	end

end

alex = User.new('Handy437')
puts alex.username
alex.add_blog("16-04-2015", "Adding an entry")
alex.add_blog("19-04-2015", "Adding another entry")
alex.blogs
blog1 = Blog.new("19-04-2015", 'Handy437', "Here is some blog entry that I need to make more than 10 words")
puts blog1.text
blog1.get_summary
blog1.entry
blog2 = Blog.new("19-04-2015", 'Handy437', "Here is some blog entry that I need to make more than 10 words")
blog2.entry
p blog1 == blog2 #returns nil?
#puts Blog.new("19-04-2015", 'Handy437', "Here is some blog entry that I need to make more than 10 words") == ("19-04-2015", 'Handy437', "Here is some blog entry that I need to make more than 10 words") 


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
