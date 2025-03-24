class Viking
  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def self.create_warrior(name)
    # Will result in anything between age of 15 and age of 35.
    age = (rand * 20 + 15).round(1)

    # Will result in minimum of 75 health and maximum of 120 health based on age. 
    # No health gains beyond age of 24.
    health = [age * 5, 120].min 

    # Will result in minimum of 10 strength and maximum of 17.5 strength based on age.
    # Strength gains begin beyond age of 20.
    strength = [age / 2, 10].max

    Viking.new(name, age, health, strength )
  end

  def report_health
    puts "#{name} has #{health} health remaining."
  end

  def is_dead?
    health <= 0
  end

  def critical_strike?
    # 1 in 5 (20%) chance.
    true if (1..5).to_a.sample == 1
  end

  def attack(enemy)
    critical = critical_strike?

    damage = 10 + strength
    damage *= 2 if critical

    if critical
      puts "#{name} critically strikes #{enemy.name} for a devastating #{damage} damage!"
    else
      puts "#{name} strikes #{enemy.name} for #{damage} damage!"
    end

    enemy.health -= damage

    if enemy.is_dead?
      puts "Fatality! #{enemy.name} has been killed by #{name}!"
    else
      enemy.report_health
    end
  end

  def self.find_under_dog(viking_1, viking_2)
    if viking_1.age < viking_2.age
      under_dog = viking_1
    else
      under_dog = viking_2
    end

    under_dog
  end

  def self.find_over_dog(viking_1, viking_2)
    if viking_1.age > viking_2.age
      over_dog = viking_1
    else
      over_dog = viking_2
    end

    over_dog
  end

  def self.battle(viking_1, viking_2)
    under_dog = find_under_dog(viking_1, viking_2)
    over_dog = find_over_dog(viking_1, viking_2)

    puts "#{under_dog.name} is the underdog and gets to strike first. In Odin's name, let the battle begin!"
    puts ""

    round = 1
    loop do
      puts "Round #{round}"
      under_dog.attack(over_dog)
      break if over_dog.is_dead?

      over_dog.attack(under_dog)
      break if under_dog.is_dead?
      round += 1
      puts ""
    end
  end

  attr_accessor :name, :age, :health, :strength
end

lagertha = Viking.create_warrior("Lagertha")
ragnar = Viking.create_warrior("Ragnar")
p lagertha
p ragnar
puts ""

Viking.battle(lagertha, ragnar)


