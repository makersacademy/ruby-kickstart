require 'date'

class User
  attr_accessor :username, :blogs

  def initialize(username)
    @username = username
    @blogs = []
  end

  def add_blog(date, text)
    blog = Blog.new(date, self, text)
    @blogs << blog
    blog
  end

  def blogs
    @blogs.sort_by { |blog| blog.date }.reverse
  end
end

class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    @date = date
    @user = user
    @text = text
  end

  def summary
    @text.split[0..9].join(' ')
  end

  def entry
    "#{@user.username} #{@date}\n#{@text}"
  end

  def ==(other)
    self.date == other.date &&
    self.user == other.user &&
    self.text == other.text
  end
end
