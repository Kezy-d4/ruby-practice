# EXERCISE 1
#   Create a superclass called Vehicle for your MyCar class to inherit from
#   and move the behavior that isn't specific to the MyCar class to the superclass.
#   
#   Create a constant in your MyCar class that stores information about the vehicle
#   that makes it different from other types of Vehicles.
#   
#   Then create a new class called MyTruck that inherits from your superclass that
#   also has a constant defined that separates it from the MyCar class in some way.

class Vehicle
  def spray_paint(new_color)
    puts "The new #{new_color} paint job on your #{make} #{model} looks great!"
    self.color = new_color
  end

  def speed_up(number)
    self.speed += number
    puts "#{make} #{model} sped up, and is now travelling #{speed} mph."
  end

  def slow_down(number)
    self.speed -= number
    puts "#{make} #{model} slowed down, and is now travelling #{speed} mph."
  end
end

class MotorVehicle < Vehicle
  attr_reader :make, :model, :year, :mpg
  attr_accessor :color, :speed

  def initialize(ma, mo, ye, mpg, co, sp)
    @make = ma
    @model = mo
    @year = ye
    @mpg = mpg
    @color = co
    @speed = sp
  end

  def start_up
    puts "#{make} #{model} is starting up..."
  end

  def shut_down
    puts "Shutting down #{make} #{model}..."
    self.speed = 0
  end

  def self.calculate_gas_mileage(gallons, miles)
    puts "My motor vehicle achieves #{miles / gallons} mpg."
  end

  def to_s
    "My #{color} #{year} #{make} #{model} achieves #{mpg} mpg, and is currently travelling #{speed} mph."
  end
end

class MyCar < MotorVehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < MotorVehicle
  NUMBER_OF_DOORS = 2
end

honda = MyCar.new("Honda", "Civic", "2012", 22, "silver", 0)
puts honda
p honda
honda.spray_paint("black")
honda.start_up
honda.speed_up(100)
honda.slow_down(50)
honda.shut_down
puts honda

# volvo = MyTruck.new("Volvo", "VNL", "2024", 50, "turquoise", 0)
# puts volvo
# volvo.spray_paint("black")
# volvo.start_up
# volvo.speed_up(100)
# volvo.slow_down(50)
# volvo.shut_down
# puts volvo

MotorVehicle.calculate_gas_mileage(10, 122.0)