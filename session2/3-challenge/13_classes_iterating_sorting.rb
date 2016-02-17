
require 'date'

class User
  attr_accessor :username, :blogs
  def initialize(username)
    self.username = username
    self.blogs = []
  end

  def add_blog(date,text)
    blog_post = Blog.new date, self, text
    self.blogs << blog_post
    self.blogs = blogs.sort_by { |x| x.date}.reverse
    blog_post
  end

end

class Blog
  attr_accessor :date, :user, :text

  def initialize(date,user,text)
    self.text = text
    self.date = date
    self.user = user
  end

  def summary
    return text.split(" ").first(10).join(" ")
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  def ==(other)
    date   == other.date &&
      user == other.user &&
      text == other.text
  end
end

lissa = User.new 'QTSort'
lissa.username                  # => "QTSort"
lissa.blogs                     # => []
lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
lissa.blogs                     # => [ blog1 ]
#
blog1 = lissa.blogs.first
blog1.user                      # => lissa
#
Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"
