class Person
  attr_accessor :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def birthday
    @age += 1
  end
end