class Person
  
  attr_accessor :name
  
  def initialize( &initializer )
    @initializer = initializer
    initializer.call self
  end
  
  def reinit
    @initializer.call self
  end
  
end



artist = Person.new do |person|
  person.name = 'Prince'
end

puts artist.name           # => "Prince"
puts artist.name = 'The Artist Formerly Known As Prince'
puts artist.name          # => "The Artist Formarly Known As Prince"
artist.reinit
puts artist.name          # => "Prince"
