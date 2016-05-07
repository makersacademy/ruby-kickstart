# date docs are at: http://ruby-doc.org/core/classes/Date.html
# don't spend too much time worrying about them :)
require 'date'

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


class User
	attr_accessor 'username'

	def initialize username
		@username = username
		@blogs = Array.new
	end

	def add_blog date, text
		Blog.new date, self, text
	end

	def blogs
		@blogs.sort! { |a,b| b.date <=> a.date }
	end
end

class Blog
	attr_accessor 'text', 'date', 'user'

	def initialize date, user, text
		@date = date
		@user = user
		@text = text

		# Automagically add a new blog to the user's blog list
		@user.blogs << self
	end

	def summary
		# Split the text into an array of words and ignore any after the 10th
		@text.split(' ').reject.with_index {|word,i|
			i > 9
		}.join(' ')
	end

	def entry
		# Return a string in a format not specified by the instructions -.-
		"#{@user.username} #{@date.to_s}\n#{@text}"
	end

	def == other
		@user == other.user && @date == other.date && @text == other.text
	end
end
