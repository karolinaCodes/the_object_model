class Vehicle
  attr_accessor :current_speed, :color, :model
  attr_reader :year

  @@number_of_vehicles = 0

  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end

  def self.gas_mileage gallons, miles 
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up number 
    self.current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake number 
    if (self.current_speed == 0)
      return
  else
    self.current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end
  end

  def get_current_speed
    puts "You are now going #{self.current_speed} mph."
  end

  def shut_car_off
    self.current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint color
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end


class Car < Vehicle
  def to_s
    puts "My car is a #{self.color}, #{self.year}, #{self.model}."
  end

  SIZE= "small"

end

class Truck < Vehicle
 def to_s
    puts "My truck is a #{self.color}, #{self.year}, #{self.model}."
  end
  SIZE= "large"
end

my_car= Car.new(2010, "blue", "ford")

my_car.speed_up 20
puts my_car.get_current_speed

my_car.brake 10
puts my_car.get_current_speed

my_car.shut_car_off
puts my_car.get_current_speed

my_car.spray_paint "orange"

Car.gas_mileage(13, 351) 

my_car.to_s

my_truck1= Truck.new(2010, "Ford Tundra", "white")
my_truck2= Truck.new(2010, "Ford Tundra", "white")
my_truck3= Truck.new(2010, "Ford Tundra", "white")

puts my_truck1

puts Vehicle.number_of_vehicles