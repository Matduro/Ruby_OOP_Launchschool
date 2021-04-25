class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # def speak
  #   "#{@name} says arf!"
  # end

  # By removing the @ symbol, we're now calling the instance method, rather than the instance variable.
  def speak
    "#{name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

def ssn
  # converts '123-45-6789' to 'xxx-xx-6789'
  'xxx-xx-' + @ssn.split('-').last
end