class Parent
  def say_hi
    p "Hi from Parent."
  end
end

Parent.superclass       # => Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end

  def instance_of?
    p "I am a fake instance"
  end
end

# child = Child.new
# child.say_hi         # => "Hi from Child."

# lad = Child.new
# lad.send :say_hi # ArgumentError: wrong number of arguments (1 for 0) from (pry):12:in `send'

# c = Child.new
# c.instance_of? Child      # => true
# c.instance_of? Parent     # => false

#  Now let's override instance_of? within Child:
heir = Child.new
heir.instance_of? Child