class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak           # => Arf!

fido = GoodDog.new("Fido")
puts fido.speak             # => Arf!

puts sparky.speak           # => "Sparky says arf!"
puts fido.speak             # => "Fido says arf!"