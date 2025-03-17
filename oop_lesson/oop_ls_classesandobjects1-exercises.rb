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

class MyCar
  attr_accessor :make, :model, :color, :speed, :engine_status

  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
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
end

# toyota test
toyota = MyCar.new("Toyota", "Corolla", "Blue")
p toyota

toyota.start_up

6.times do 
  toyota.speed_up
  puts "#{toyota.speed} mph"
end

7.times do 
  toyota.brake
  puts "#{toyota.speed} mph"
end

toyota.shut_down

# honda test
honda = MyCar.new("Honda", "Civic", "Black")
p honda

honda.start_up

6.times do
  honda.speed_up
  puts "#{honda.speed} mph"
end

7.times do 
  honda.brake
  puts "#{honda.speed} mph"
end

honda.shut_down

  


