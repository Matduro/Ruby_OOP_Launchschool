# class GoodDog
#   def initialize
#     puts "This object was initialized!"
#   end
# end

# sparky = GoodDog.new

class GoodDog
  def initialize(name)
    @name = name
  end
  # You'll notice something new here. The @name variable looks different because it has the @ symbol in front of it. This is called an instance variable.
  
  def name
    @name
  end

  def name=(n)
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end
  
sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

