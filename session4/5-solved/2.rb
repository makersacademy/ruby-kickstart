# 1's solution requires the actual file we are interested in
require File.dirname(__FILE__) + "/1"

class StackInDisguise < Stack
  def inspect
    ary = []
    current = @head
    while current
      ary << current.data
      current = current.next_node
    end
    ary.reverse.inspect
  end
end
# ~> /Users/samuel/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- ./1 (LoadError)
# ~>  from /Users/samuel/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~>  from -:2:in `<main>'
