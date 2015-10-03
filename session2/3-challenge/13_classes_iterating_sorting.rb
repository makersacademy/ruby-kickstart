# Unfinished Blog class

require 'date'

class User
  attr_accessor :blogs, :username
  def initialize(username)
    @username = username
    @blogs = []
  end

  def add_blog(date, text)
    parsed_date = Date.parse(date)
    new_blog = Blog.new(@username,parsed_date,text)
    self.blogs << new_blog
  end

end

class Blog
  attr_accessor :text, :date, :user
  def initialize(user,date,text)
    user = user
    date = date
    text = text
  end
  def summary
    self.text.split[0..9]
  end
end

harry = User.new("harryandrew")
puts harry.username
harry.add_blog("2015-01-01", "This is my first blog!")
harry.add_blog("2015-02-01", "This is my second blog!")
harry.add_blog("2015-03-01", "This is my third blog!")
p harry.blogs
blog1 = harry.blogs.first
puts blog1