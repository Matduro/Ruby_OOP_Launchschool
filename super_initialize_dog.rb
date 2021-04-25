class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name) 
    @age = age
  end
end

# Safer method of using super
class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super()
    @color = color
  end
end


bruno = GoodDog.new("brown")
BadDog.new(2, "bear") # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">
bear = Bear.new("black")        # => #<Bear:0x007fb40b1e6718 @color="black">