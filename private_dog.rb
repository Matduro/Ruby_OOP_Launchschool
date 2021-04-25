class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
# sparky.human_years
# NoMethodError: private method `human_years' called for
  #<GoodDog:0x007f8f431441f8 @name="Sparky", @age=4>