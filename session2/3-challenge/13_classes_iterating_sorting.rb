
require 'date'

class User

attr_accessor :username, :blogs

def initialize(username)
	@username=username
	@blogs=[]
end

def add_blog (date,text)
	to_add=Blog.new(date,self,text)
	@blogs<<to_add
	
	self.blogs = blogs.sort_by { |blog| blog.date }.reverse
    to_add
end

end


class Blog

attr_accessor :text, :date, :user

def initialize(date, user, text)
    @date = date
    @user = user
	@text = text
end


def entry
	return "#{@user.username} #{@date}\n#{@text}"
end

def summary
	return @text.split(" ")[0..9].join(" ")
end

def ==(other)
	self.date == other.date && 
	self.user == other.user && 
	self.text == other.text
end

end



