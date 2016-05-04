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



require 'date'

class User
attr_accessor :username
    
    def initialize(username)
        @username = username
        @blogs = []
    end
    
    def add_blog(date, text)
        @blogs << new_blog = Blog.new(date, @username, text)
        new_blog
    end
    
    def blogs
        @blogs.sort_by{|blogs| blogs.date}.reverse
    end
    
end

class Blog
attr_accessor :text, :date, :user

    def initialize(date, user, text)
        @date = date
        @user = user
        @text = text
    end
    
    def summary
        @text.split(" ").first(10).join(" ")
    end
    
    def entry
        "#{@user.username} #{@date}\n#{text}"
    end
    
    def ==(other)
        self.user == other.user &&
        self.date == other.date &&
        self.text == other.text
    end

end
    
    


