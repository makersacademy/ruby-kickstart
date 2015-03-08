require 'date'

class User
  attr_accessor :username
  attr_accessor :blogs
  
  def initialize(username)
    self.username = username
    self.blogs = []
  end
  
  def add_blog(date, text)
    blogentry = Blog.new(date, self, text)
    blogs << blogentry
    @blogs = blogs.sort_by {|blog| blog.date }.reverse
    blogentry
  end
  
  def blogs
    @blogs
  end
end

class Blog
  attr_accessor :text
  attr_accessor :date
  attr_accessor :user
  
  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end
  
  def summary
    self.text.split(/\s+/, 11)[0...10].join(' ')
  end
  
  def entry
    "#{user.username} #{date}\n#{text}"
  end
  
  def ==(other)
    return self.date == other.date && self.user == other.user && self.text == other.text
  end
  
end