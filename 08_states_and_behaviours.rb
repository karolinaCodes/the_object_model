class Car
  attr_accessor :current_speed, :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

my_car= Car.new(2010, "blue", "ford")

my_car.speed_up 20
puts my_car.get_current_speed

my_car.brake 10
puts my_car.get_current_speed

my_car.shut_car_off
puts my_car.get_current_speed

my_car.spray_paint "orange"
