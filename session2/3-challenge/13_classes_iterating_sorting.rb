
require 'date'
class User
attr_accessor :username, :blogs
     def initialize(username)
	@username = username
	@blogs = []
	end
	    def add_blog(date, text)
    blogs_new = Blog.new(date, @blogs, text)	
	blogs << blogs_new
	@blogs = blogs.sort_by {|blog| blog.date}.reverse  #in reverse chronological order (newest first) 
	 blogs_new
	      end
end
         class Blog
attr_accessor :date, :user, :text
def initialize(date, user, text)
	@date = date
	@user = user
	@text= text
	
end
 def entry
    "#{user.username} #{date}\n#{text}"
  end
        def summary
text.split[0..9].join(" ") 
end
        def ==(other)
     @date == other.date && @user == other.user && @text == other.text
   end
end
