# EXERCISE 1
#   Create a class called MyCar.
#   
#   When you initialize a new instance or object of the class, 
#   allow the user to define some instance variables that tell us
#   the year, color, and model of the car.
#   
#   Create an instance variable that is set to 0 during instantiation
#   of the object to track the current speed of the car as well.
#   
#   Create instance methods that allow the car to 
#   speed up, brake, and shut the car off.
#   
# EXERCISE 2
#   Add an accessor method to your MyCar class to change and view the
#   color of your car. 
#   
#   Then add an accessor method that allows you to view, 
#   but not modify, the year of your car.
#
# EXERCISE 3
#   You want to create a nice interface that allows you to accurately 
#   describe the action you want your program to perform. 
#   
#   Create a method called spray_paint that can be called on an object
#   and will modify the color of the car.
#   
# EXERCISE 4
#   Add a class method to your MyCar class that calculates the gas mileage
#   (i.e. miles per gallon) of any car.
#   
# EXERCISE 5
#   Override the #to_s method to create a user friendly print out of your object.

class MyCar
  attr_accessor :make, :model, :speed, :engine_status, :mpg
  attr_accessor :color
  attr_reader :year

  def initialize(make, model, color, year, mpg)
    @make = make
    @model = model
    @color = color
    @mpg = mpg
    @year = year
    @speed = 0
    @engine_status = "off"
  end

  def make_and_model
    "#{make} #{model}"
  end

  def start_up
    if engine_status == "off"
      puts "#{make_and_model} is starting up..."
      self.engine_status = "on"

    elsif engine_status == "on"
      puts "#{make_and_model} is already running."
    end
  end

  def shut_down
    if engine_status == "on" && speed > 0
      puts "Bring #{make_and_model} to a complete stop before shutting it down."

    elsif engine_status == "on" && speed == 0
      puts "#{make_and_model} is shutting down..."
      self.engine_status = "off"

    elsif engine_status == "off"
      puts "#{make_and_model} is already shut down."
    end
  end

  def speed_up
    if engine_status == "on" 
      puts "#{make_and_model} is speeding up!"
      self.speed += 25

    elsif engine_status == "off"
      puts "#{make_and_model} isn't running."
    end
  end

  def brake
    if engine_status == "on" && speed > 0
      puts "#{make_and_model} is braking!"
      self.speed -= 25

    elsif engine_status == "on" && speed == 0
      puts "#{make_and_model} is already at a complete stop."

    elsif engine_status == "off"
      puts "#{make_and_model} isn't running."
    end
  end

  def current_speed
    puts "#{make_and_model} is now traveling #{speed} mph."
  end

  def spray_paint(new_color)
    self.color = new_color
  end

  def self.calculate_gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon."
  end

  def to_s
    "#{year} #{color} #{make_and_model} achieves #{mpg} mpg."
  end
end

# toyota test
toyota = MyCar.new("Toyota", "Corolla", "Blue", 2016, 25)
# p toyota
# toyota.start_up

# 6.times do 
#   toyota.speed_up
#   toyota.current_speed
# end

# 7.times do 
#   toyota.brake
#   toyota.current_speed
# end
# toyota.shut_down

# honda test
honda = MyCar.new("Honda", "Civic", "Black", 2014, 32)
# p honda
# honda.start_up

# 6.times do
#   honda.speed_up
#   honda.current_speed
# end

# 7.times do 
#   honda.brake
#   honda.current_speed
# end
# honda.shut_down

# exercise 2 tests
# p toyota.year
# p honda.year

# toyota.color = "Yellow"
# honda.color = "Red"
# p toyota.color
# p honda.color

# exercise 3 tests
# toyota.spray_paint("Green")
# honda.spray_paint("Purple")

# p toyota.color
# p honda.color

# exercise 4 tests
# MyCar.calculate_gas_mileage(2, 23.0)

# exercise 5 tests
p honda
puts honda
p toyota
puts toyota

  


