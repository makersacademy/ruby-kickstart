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



# ==========  EXAMPLE  ==========
#
# lissa = User.new 'QTSort'
# lissa.username                  # => "QTSort"
# lissa.blogs                     # => []
#
# lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
# lissa.blogs                     # => [ blog1 ]
#
# blog1 = lissa.blogs.first
# blog1.user                      # => lissa
#
# Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"                                    # we'll call this blog2
# Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"              # we'll call this blog3
# Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best ^_^"   # we'll call this blog4
# lissa.blogs                     # => [ blog1 , blog4 , blog2 , blog3 ]
#
# blog5 = Blog.new Date.today, lissa, <<BLOG_ENTRY
# Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
# Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
# eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
# porta lectus.
# BLOG_ENTRY
#
# blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# blog5.entry         # => QTSort 2010-05-28
#                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#                          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#                          eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#                          porta lectus.
#
# blog5.date = Date.parse('2009-01-02')
# blog5.user = User.new 'disloyalist.party'
# blog5.text = "From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original\n" \
#              "I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,\n" \
#              "All my labor will be lost with time"
#
# blog5.entry      # => disloyalist.party 2009-01-02
#                       From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original
#                       I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,
#                       All my labor will be lost with time



# date docs are at: http://ruby-doc.org/core/classes/Date.html
# don't spend too much time worrying about them :)
require 'date'
$blog_store = []
$i = 0
class User
  
  def initialize(username)
    @username = username
  end
  
  def username
    @username
  end
  
  def add_blog(date, text)
    $i += 1
    $blog_store[$i-1] = Array.new
    $blog_store[$i-1][1] = "blog#{$i}"
    $blog_store[$i-1][0] = date
    $blog_store[$i-1][2] = text
  end
  
  def blogs
    @blog_return = Array.new
    p $blog_store
    $blog_store = $blog_store.sort.reverse
    $blog_store.each {|x|
      @blog_return.push(x[1])
    }
    return @blog_return
  end
end

class Blog 
  
  def initialize(date, user, text)
    @date = date
    @user = user
    @text = text
    @repeat = 0
    $i += 1
    store
    puts "we'll call this blog#{$i}"
  end
  
  def store
    @array_position = $blog_store.length + 1 if @repeat == 0
    @array_position = 1 if @repeat == 1
    $blog_store[@array_position-1] = Array.new
    $blog_store[@array_position-1][1] = "blog#{$i}"
    $blog_store[@array_position-1][0] = @date
    $blog_store[@array_position-1][2] = @text
  end
  
  def get_summary
    string_return = ""
    ten_array = Array.new
    puts $blog_store
    ten_array = $blog_store[0][2].split
    for j in 0...10
      string_return = string_return + " " + ten_array[j]
    end
    string_return
  end
  
  def date=(new_date)
    @date = new_date
    @repeat = 1
    store
  end
  
  def text=(new_text)
    @text = new_text
    @repeat = 1
    store
  end
  
  def user=(new_user)
    @user = new_user
    @repeat = 1
    store
  end
    
    
end

lissa = User.new 'QTSort'
p lissa.username 
lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
p lissa.blogs
Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"
Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"
Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best"
p lissa.blogs

blog5 = Blog.new Date.today, lissa, <<BLOG_ENTRY
"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
 Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
 eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
 porta lectus."
BLOG_ENTRY

p lissa.blogs


blog5.date = Date.parse('2009-01-02')
blog5.user = User.new 'disloyalist.party'
blog5.text = "From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original\n" 
p blog5.get_summary




