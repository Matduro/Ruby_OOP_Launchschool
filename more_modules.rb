module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end

    def self.some_out_of_place_method(num)
      num ** 2
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end


buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')       # => "Arf!"
kitty.say_name('kitty')   # => "kitty"

# Defining methods this way within a module means we can call them directly from the module:
value = Mammal.some_out_of_place_method(4)
#We can also call such methods by doing:
value = Mammal::some_out_of_place_method(4)
# although the former is the preferred way.