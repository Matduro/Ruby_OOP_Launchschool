class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new
puts sparky.speak
puts paws.speak
# In the GoodDog class, we're overriding the speak method in the Animal class because Ruby checks the object's class first for the method before it looks in the superclass.