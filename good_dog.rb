# Ruby defines the attributes and behaviors of its objects in classes
# To define a class, we use syntax similar to defining a method. We replace the def with class and use the CamelCase naming convention to create the name.
# class GoodDog
# end

# sparky = GoodDog.new
# This entire workflow of creating a new object or instance from a class is called instantiation, so we can also say that we've instantiated an object called sparky from the class GoodDog

module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")
bob = HumanBeing.new
bob.speak("Hello!")
