# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Define a class called User that keeps track of a person's username
# it should receive the username when initialized
# it should have a method add_blog which accepts a date and text
# it should have a method blogs which returns an array of all blogs the user has written
# they should be in reverse chronological order (newest first)
#
# Define a class called Blog that could be used to store an entry for your web log.
# The class should have a getter and setter methods: text , date , user
# its initialize method should receive the date, user , and text
# have a method called summary that returns the first 10 words from the text (or the entire text if it is less than 10 words)
#
# Two blogs should be equal to eachother if they have the same user, date, and text
# here is a partially filled out example of how to define the == operator:
#      def ==(other)
#        return self.date == other.date
#      end




require 'date'

class User
	attr_accessor :username
	attr_accessor :blogs

	def initialize (username)
		self.username = username
		self.blogs = []
	end

	def add_blog(date,text)
		Blog.new(date, self, text)
	end
end

class Blog
	attr_accessor :text
	attr_accessor :date
	attr_accessor :user

	def initialize(date, user, text)
		self.user = user
		self.date = date
		self.text = text
    user.blogs << self
    user.blogs.sort!{|a,b| b.date <=> a.date}
	end

	def entry
		"#{user.username} #{date}\n#{text}"
	end

  def get_summary
    text.split[0..9].join(" ")
  end
  def summary
    text.split[0..9].join(" ")
  end

	def ==(other)
		return self.date == other.date && self.text == other.text && self.user ==other.user
	end

end
#
# lissa = User.new 'QTSort'
# p lissa.username                  # => "QTSort"
# p lissa.blogs                     # => []
#
# lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
# p lissa.blogs                     # => [ blog1 ]
#
# blog1 = lissa.blogs.first
# p blog1.user                      # => lissa
#
# Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"                                    # we'll call this blog2
# Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"              # we'll call this blog3
# Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best ^_^"   # we'll call this blog4
# p lissa.blogs                     # => [ blog1 , blog4 , blog2 , blog3 ]
#
#  blog5 = Blog.new Date.today, lissa, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#  Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#  eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#  porta lectus."
# #
# p blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# puts blog5.entry         # => QTSort 2010-05-28
# #                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
# #                          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
# #                          eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
# #                          porta lectus.
# #
# #
# #
# blog5.date = Date.parse('2009-01-02')
# blog5.user = User.new 'disloyalist.party'
# blog5.text = "From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original\n" \
#              "I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,\n" \
#              "All my labor will be lost with time"
# #
# puts blog5.entry      # => disloyalist.party 2009-01-02
# #                       From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original
# #                       I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,
# #                       All my labor will be lost with time
#
