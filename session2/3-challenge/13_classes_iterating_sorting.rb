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
	attr_accessor :username, :blogs

	def initialize (username)
		self.username = username
		self.blogs = []
	end

	def add_blog (date, text)
		blog = Blog.new(date, self, text)
		blogs.push(blog)
	end

	def blogs
		self.blogs.sort_by { |blog| blog.date }.reverse
	end

end

class Blog
	attr_accessor :text, :date, :user 

	def initialize (text, date, user)
		self.text = text
		self.date = date
		self.user = user
	end

	def summary
		text.split[0..9].join(" ")
	end
end


#struggling with the other criteria. had a look at the solution












